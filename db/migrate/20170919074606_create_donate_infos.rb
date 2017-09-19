class CreateDonateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :donate_infos do |t|
      t.belongs_to :currency, foreign_key: true
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
