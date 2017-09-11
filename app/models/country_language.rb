class CountryLanguage < ApplicationRecord
  belongs_to :country
  belongs_to :language
end
