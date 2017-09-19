FactoryGirl.define do 
  factory :address do
    state         Faker::Address.state
    city          Faker::Address.city
    zip_code      Faker::Address.zip_code
    district      Faker::Address.community
    street        Faker::Address.street_name
    number        Faker::Address.building_number
    business_name Faker::Company.name
    complement 'N/A'
  end
end
