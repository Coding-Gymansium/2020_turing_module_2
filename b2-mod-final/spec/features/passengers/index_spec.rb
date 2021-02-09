require 'rails_helper'

RSpec.describe 'Passengers Index Page', type: :feature do
  describe "As a visitor" do
    before :each do
      @airline = Airline.create(name: "Delta")

      @flight1 = @airline.flights.create!(number: 1234, date: "01/01/01", time: "01:01:01", departure_city: "New York", arrival_city: "Denver")
      @flight2 = @airline.flights.create!(number: 1000, date: "01/01/01", time: "01:01:01", departure_city: "New York", arrival_city: "Denver")
      @flight3 = @airline.flights.create!(number: 1500, date: "01/01/01", time: "01:01:01", departure_city: "New York", arrival_city: "Denver")

      @passenger1 = Passenger.create(name: "passenger 1", age: 19)
      @passenger2 = Passenger.create(name: "passenger 2", age: 40)
      @passenger3 = Passenger.create(name: "passenger 3", age: 60)
      @passenger4 = Passenger.create(name: "passenger 4", age: 25)
      @passenger5 = Passenger.create(name: "passenger 5", age: 10)
      @passenger6 = Passenger.create(name: "passenger 6", age: 16)
      @passenger7 = Passenger.create(name: "passenger 7", age: 1)

      FlightPassenger.create(flight_id: @flight1.id, passenger_id: @passenger1.id)
      FlightPassenger.create(flight_id: @flight2.id, passenger_id: @passenger2.id)
      FlightPassenger.create(flight_id: @flight3.id, passenger_id: @passenger3.id)
      FlightPassenger.create(flight_id: @flight1.id, passenger_id: @passenger4.id)
      FlightPassenger.create(flight_id: @flight2.id, passenger_id: @passenger5.id)
      FlightPassenger.create(flight_id: @flight3.id, passenger_id: @passenger6.id)
      FlightPassenger.create(flight_id: @flight1.id, passenger_id: @passenger7.id)
    end

    it "I see a list of all flight numbers" do
      visit "/passengers"
      expect(page).to have_content(@passenger1.name)
      expect(page).to have_content(@passenger2.name)
      expect(page).to have_content(@passenger3.name)
    end
  end
end
