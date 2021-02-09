class Flight < ApplicationRecord
  validates :number, :date, :time, :departure_city, :arrival_city, presence: true
  belongs_to :airline
  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers
end
