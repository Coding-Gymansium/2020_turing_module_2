class Passenger < ApplicationRecord
  validates :name, :age, presence: true
  has_many :flight_passengers
  has_many :flights, through: :flight_passengers
end
