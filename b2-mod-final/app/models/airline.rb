class Airline < ApplicationRecord
  validates :name, presence: true
  has_many :flights
  has_many :passengers, through: :flights

  def passengers_list
    passengers.distinct
  end
end
