FactoryGirl.define do
  factory :country do
    name_en     Faker::Address.country
    name_native Faker::Address.country
    code_iso2   Faker::Address.country_code
    code_iso3   Faker::Address.country_code_long
    phone_code  Faker::PhoneNumber.subscriber_number(2)
  end
end
