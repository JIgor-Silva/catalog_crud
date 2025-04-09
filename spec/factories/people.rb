FactoryBot.define do
  factory :person do
      name     { Faker::Name.name }
      email    { Faker::Internet.unique.email }
      password { Faker::Internet.password(min_length: 8) }
      after(:create) do |person|
        create_list(:phone_number, 2, person: person)
        create(:address, person: person)
      end
  end
end
