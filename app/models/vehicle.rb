class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :price_per_day, :description, :location, presence: true
  validates :name, uniqueness: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :global_search, against: [ :name, :description, :location ],
  associated_against: {
    user: [ :first_name, :last_name]
    }, using: {
    tsearch: { prefix: true }
  }
end
