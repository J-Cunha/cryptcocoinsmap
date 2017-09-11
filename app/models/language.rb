class Language < ApplicationRecord
  validates_uniqueness_of :code
  validates_presence_of :name_en
  has_many :countries, through: :country_languages

end
