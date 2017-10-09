class Category < ApplicationRecord

  has_many :address_categories
  has_many :addresses, through: :address_categories
  validate :validates_uniquiness_of_name, :on => :create
  translates :name, :fallbacks_for_empty_translations => true

  def validates_uniquiness_of_name
    errors.add(:name, 'Category with this name already exist') unless Category.where(name: self.name).empty?
    false
  end

  def self.export_csv
    all_keys_as_array = I18n.available_locales.sort_by {|c| c}
    all_keys_as_array.insert(0, 'category_id')
    #[:ar, :en, :es, :fr, :ge, :hi, :it, :ja, :pt_BR, :ru]
    h = CSV::Row.(all_keys_as_array, [], true)
    t = CSV::Table.new([h])
    Category.all.each do |c|
      r = CSV::Row.new([], [], false)
      r << {'category_id' => c.id}
      I18n.available_locales.each do |locale|
        I18n.locale = locale
        r << {locale.to_s => c.name}
      end
      t << r
    end
    puts t.to_csv
    f = File.new("category_translations.csv", "w")
    f.write(t.to_csv)
    f.close
  end

  def self.import_csv
    CSV.foreach('category_translations.csv', :headers => true) do |row|
      I18n.available_locales.each do |locale|
        I18n.locale = locale
        if Category.find_by_id(row['category_id']).nil?

        else
          c = Category.find_by_id(row['category_id'])
          c.name = row[locale.to_s]
          c.save
        end

      end
    end
  end
end

