class PhoneNumber < ApplicationRecord
  belongs_to :person
  validates :number, presence: true, uniqueness: { scope: :person_id }
  validates :phone_type, presence: true, inclusion: { in: %w[mobile home work other] }
  def formatted_number
    case phone_type
    when "mobile"
      "📱 #{number}"
    when "home"
      "🏠 #{number}"
    when " work "
      "💼 #{number}"
    else
      number
    end
  end
end
