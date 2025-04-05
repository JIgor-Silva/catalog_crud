class Person < ApplicationRecord
  has_many :phone_numbers, dependent: :destroy
  has_one :address, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }

  accepts_nested_attributes_for :phone_numbers, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :addresses
end
