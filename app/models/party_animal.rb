class PartyAnimal < ApplicationRecord

  mount_uploader :image, PhotoUploader

  belongs_to :user
  has_many :bookings
  validates :party_name, uniqueness: true
  validates :party_name, presence: true
  serialize :category, Array
  serialize :available_dates
end
