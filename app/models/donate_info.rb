class DonateInfo < ApplicationRecord
  belongs_to :currency
  validates_uniqueness_of :currency_id
end
