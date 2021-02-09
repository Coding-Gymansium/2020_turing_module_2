require 'rails_helper'

RSpec.describe Airline, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :name}
  end
  describe 'Relationships' do
    it {should have_many :flights}
  end

  it "#passengers_list" do
    @airline = Airline.create(name: "Delta")

    @flight1 = @airline.flights.create!(number: 1234, date: "01/01/01", time: "01:01:01", departure_city: "New York", arrival_city: "Denver")
    @flight2 = @airline.flights.create!(number: 1000, date: "01/01/01", time: "01:01:01", departure_city: "New York", arrival_city: "Denver")
    @flight3 = @airline.flights.create!(number: 1500, date: "01/01/01", time: "01:01:01", departure_city: "New York", arrival_city: "Denver")
    
    @passenger1 = Passenger.create(name: "passenger 1", age: 19)

    FlightPassenger.create(flight_id: @flight1.id, passenger_id: @passenger1.id)
    FlightPassenger.create(flight_id: @flight2.id, passenger_id: @passenger1.id)
    FlightPassenger.create(flight_id: @flight3.id, passenger_id: @passenger1.id)


    expect(@airline.passengers_list.count).to eq(1)
  end
end
