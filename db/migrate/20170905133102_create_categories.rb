class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
    reversible do |dir|
      dir.up do
        Category.create_translation_table!(:name => :string)
      end

      dir.down do
        Category.drop_translation_table!
      end
    end
  end
end
