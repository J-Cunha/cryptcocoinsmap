class Continent < ApplicationRecord
  validates_uniqueness_of :code
  has_many :countries
end
