FactoryBot.define do
  factory :phone_number do
    number  { Faker::PhoneNumber.cell_phone_in_e164 }
    operation_type { %w[mobile home work other].sample } 
    person
  end
end
