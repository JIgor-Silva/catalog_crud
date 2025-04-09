require 'rails_helper'

RSpec.describe Person, type: :model do
  it { should have_many(:phone_numbers).dependent(:destroy) }
  it { should have_one(:address).dependent(:destroy) }
  it { should have_many(:memberships).dependent(:destroy) }
  it { should have_many(:groups).through(:memberships) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password) }


  it 'cria uma pessoa com telefones, endereço e grupos' do
    person = FactoryBot.create(:person)

    # cria dois grupos e adiciona à pessoa
    group1 = create(:group)
    group2 = create(:group)
    create(:membership, person: person, group: group1)
    create(:membership, person: person, group: group2)

    expect(person).to be_valid
    expect(person.phone_numbers.size).to eq(2)
    expect(person.address).to be_present
    expect(person.groups.count).to eq(2)
  end
end
