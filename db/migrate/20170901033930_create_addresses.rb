class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :state
      t.string :city
      t.string :zip_code
      t.string :district
      t.string :street
      t.string :number
      t.string :complement
      t.text :reference_point
      t.string :email

      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
