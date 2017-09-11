class Category < ApplicationRecord
  has_many :address_categories
  has_many :addresses, through: :address_categories
  translates :name
end

