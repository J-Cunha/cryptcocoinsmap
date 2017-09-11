class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :name_en
      t.string :name_native
      t.string :code

      t.timestamps
    end
  end
end
