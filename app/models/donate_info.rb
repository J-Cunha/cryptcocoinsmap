class DonateInfo < ApplicationRecord
  belongs_to :currency

  validates_uniqueness_of :currency_id, :address
  validates_presence_of  :address
end
