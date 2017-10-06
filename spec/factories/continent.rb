FactoryGirl.define do 
  factory :continent do
    name_en Faker::LeagueOfLegends.location #Faker dont have continent 
    code    Faker::Address.building_number
  end
end
