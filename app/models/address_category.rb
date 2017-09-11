class AddressCategory < ApplicationRecord
  belongs_to :address
  belongs_to :category
end
