class AddUserToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :user, foreign_key: true
  end
end
