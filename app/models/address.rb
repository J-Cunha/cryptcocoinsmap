class Address < ApplicationRecord
  belongs_to :country
  belongs_to :user
  has_many :address_currencies, dependent: :destroy
  has_many :currencies, dependent: :destroy, through: :address_currencies

  has_many :address_categories, dependent: :destroy
  has_many :categories, dependent: :destroy, through: :address_categories, :class_name => 'Category'
  has_many :address_attachments, inverse_of: :address
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :address_categories

  accepts_nested_attributes_for :address_attachments, reject_if: :all_blank,
  allow_destroy: true
  
  validates_presence_of :business_name, :country, :state, :city, :zip_code, :street, :number

  attr_readonly [:full_address]
  attr_accessor :country_id,
                :crypto_currencies_accepted

  geocoded_by :full_address
  after_validation :geocode

  
  def self.from_countries(countries)
    addresses = nil
    countries.each do |f_c|
      addresses = Country.find(f_c.to_i).addresses if addresses.nil?
      addresses += Country.find(f_c.to_i).addresses if addresses.nil?
    end
    return addresses
  end

  def self.that_accept_coins(coins)
    addresses = nil
    coins.each do |f_c|
      addresses = Currency.find(fc.to_i).addresses if addresses.nil?
      addresses += Country.find(f_c.to_i).addresses if addresses.nil?
    end
    return "#{addresses}"
  end

  #def categories
  #  categories = []

  #  end

  #def categories=(categories)
    #receive
    #puts "categories= #{categories.inspect} #{self.inspect}"
    #categories.each do |c|
     # AddressCategory.create(address: self, category: Category.where(id: c[1].to_i).first)
    #end
   # true
  #end
  def get_categories
    categories=[]
    self.address_categories.each do |c|
      categories.push(c.category.name)
    end
    return categories
  end
  def set_categories=(categories)
    #receive
    categories.each do |k,v|
      AddressCategory.create(address: self, category: Category.where(id: v.to_i).first) unless v.to_s.empty? || v.to_s.nil?
    end
    true
  end

  def crypto_currencies_accepted
    currencies = []
    self.currencies.where(type: "CryptoCurrency").each {|c| currencies.push(c.name.to_s)}
    return currencies
    true
  end
  def crypto_currencies_accepted=(currencies)
    currencies.each do |c|
      AddressCurrency.create(address: self, currency: CryptoCurrency.where(id: c.to_i).first)
    end
  end

  def emails
    emails = []
    Email.where(address: self).each do |email|
      emails.push(email.email) unless email.email.nil?
    end
    return emails
  end

  def country_id
    self.country.id unless self.country.nil?
  end

  def country_id=(country_id)
    self.country = Country.where(id: country_id).first
  end

  def full_street
    return "#{self.street}, #{self.number}" if self.complement.nil?
    return "#{self.street}, #{self.number}, #{self.complement}" if !self.complement.nil?
  end

  def full_address
    return "#{self.country.name_native}, #{self.state}, #{self.city}, #{self.zip_code}, #{self.street}, #{self.number}"
  end

end
