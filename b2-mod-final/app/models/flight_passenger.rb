class FlightPassenger < ApplicationRecord
  validates :flight_id, :passenger_id, presence: true
  belongs_to :flight
  belongs_to :passenger
end
