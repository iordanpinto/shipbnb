class Ship < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  # validates :image_url, format: { with: URI::regexp(%w[http https]), message: "must be a valid URL" }, allow_blank: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
