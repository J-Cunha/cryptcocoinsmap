class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name_en
      t.string :name_native
      t.string :code_iso2
      t.string :code_iso3
      t.string :phone_code
      #t.belongs_to :continent, foreign_key: true

      t.timestamps
    end
  end
end
