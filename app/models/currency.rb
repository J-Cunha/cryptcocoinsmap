class Currency < ApplicationRecord
  validates_presence_of :name, :code
  validates_uniqueness_of  :code
  has_many :address_currencies
  has_many :addresses, through: :address_currencies
  belongs_to :country, optional: true
  attr_accessor :country_name
  def country_name
    self.country.name
  end
  def country_name=(name)
    self.country=Country.where(name_native: name).first
  end
end

