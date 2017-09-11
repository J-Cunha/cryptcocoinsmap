class PhoneNumber < ApplicationRecord
  belongs_to :address
  belongs_to :country
  validates_presence_of :number
end
