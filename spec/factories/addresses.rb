FactoryBot.define do
  factory :address do
    street { Faker::Address.street_name }
    city   { Faker::Address.city }
    state  { Faker::Address.state_abbr }
    zp_code  {  Faker::Address.zip_code }
    person
  end
end
