class CreateAddressCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :address_currencies do |t|
      t.belongs_to :currency, foreign_key: true
      t.belongs_to :address, foreign_key: true

      t.timestamps
    end
  end
end
