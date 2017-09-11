class CreateCountryLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :country_languages do |t|
      t.belongs_to :country, foreign_key: true
      t.belongs_to :language, foreign_key: true

      t.timestamps
    end
  end
end
