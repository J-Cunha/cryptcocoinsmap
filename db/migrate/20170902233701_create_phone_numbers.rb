class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.belongs_to :address, foreign_key: true
      t.belongs_to :country, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
