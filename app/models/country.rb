class Country < ApplicationRecord
  belongs_to :continent, required: false

  has_many :languages, through: :country_languages
  has_many :phone_numbers
  has_many :addresses
  validates_presence_of :code_iso2, :name_en, :phone_code
  validates_uniqueness_of :code_iso2
  attr_readonly :name

  def name
    self.name_en
  end

end
