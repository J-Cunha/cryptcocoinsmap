class AddressCurrency < ApplicationRecord
  belongs_to :currency
  belongs_to :address
end
