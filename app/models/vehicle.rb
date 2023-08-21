class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :price_per_day, :description, :location, presence: true
  validates :name, uniqueness: true
end
