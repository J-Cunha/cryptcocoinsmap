class AddCountryToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :country, foreign_key: true
  end
end
