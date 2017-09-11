class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.belongs_to :address, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
