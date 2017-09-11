class AddBusinessNameToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :business_name, :string
  end
end
