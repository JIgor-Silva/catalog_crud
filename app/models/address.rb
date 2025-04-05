class Address < ApplicationRecord
  belongs_to :person

  validates :street, :city, :state, presence: true
  # validates :zp_code format: { with: /\A\d{5}(-\d{4})?\z/, message: "deve ser no formato 12345 ou 12345-6789" }

  def full_address
    "#{street}, #{city}, #{state} #{zp_code}"
  end
end
