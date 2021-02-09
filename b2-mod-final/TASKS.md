# Mod 2 Final - Tasks
### September 21, 2020

### Initial Set Up

- [x] Check Gemfile, run bundle install, and bundle update
- [x] Create Database
- [x] Run RSpec. 0 examples and 0 failures

- [x] Set up Airlines
  - [x] Attributes: :name
  - [x] have many flights
  - [x] Flights belong to airlines
- [x] Set up Flights
  - [x] Attributes: :number, :date, :time, :departure_city, :arrival_city
  - [x] Flights belong to airlines
    - [x] add airline_id
  - [x] have many passengers
- [x] Set Up passengers
  - [x] Attributes: :name, :age
  - [x] Set up a many to many relationship between flights and passengers


### Stories

#### User Story 1, Flights Index Page

As a visitor
When 
- [x] I visit the flights index page ('/flights')
  - [x] I see a list of all flight numbers
  - [x] And under each flight number I see
      - [x] the names of all that flights passengers
- [x] Set up features test

#### User Story 2, Airlines Show Page
As a visitor
When I visit an airlines show page ('/airlines/:id')
- [x] I see a unique list of passengers that have flights from that airline

- [x] Set up features test

#### User Story 3, Remove a Passenger from a Flight
As a visitor
When I visit the flights index page
  - [x] Next to each passengers name
    - [x] I see a link to remove that passenger from that flight
    When I click on that link
      - [x] I'm returned to the flights index page 
      - [x] And I no longer see that passenger listed under that flight

#### User Story 4, Passengers Index Page
As a visitor
When I visit a passengers index page ('/passengers')
- [x] I see names of all passengers
  - [x] And next to the passengers name, I see the number of flights that the passenger has

```
def unique_passengers
    passengers.distinct
  end

  Passenger List:
<ul>
  <% @airline.unique_passengers.each do |passenger| %>
  <li><%= passenger.name %></li>
  <% end %>
</ul>