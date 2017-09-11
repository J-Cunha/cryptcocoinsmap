class AddDescriptionToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :description, :text
  end
end
