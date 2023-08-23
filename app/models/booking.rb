class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  attribute :status, default: "Pending"
end
