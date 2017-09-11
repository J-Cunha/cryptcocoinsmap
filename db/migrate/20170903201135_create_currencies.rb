class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :code
      t.string :symbol
      t.belongs_to :country

      t.string :type

      t.timestamps
    end
  end
end
