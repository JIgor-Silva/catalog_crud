class Group < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :people, through: :memberships

  validates :name, presence: true, uniqueness: true
end
