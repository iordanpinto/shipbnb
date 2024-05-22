class Ship < ApplicationRecord
  belongs_to :user

  has_many :bookings
  # validates :image_url, format: { with: URI::regexp(%w[http https]), message: "must be a valid URL" }, allow_blank: true
end
