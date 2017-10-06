class CreateAddressAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :address_attachments do |t|
      t.belongs_to :address
      t.text :photos

      t.timestamps
    end
  end
end
