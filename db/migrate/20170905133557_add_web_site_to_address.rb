class AddWebSiteToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :web_site, :string
  end
end
