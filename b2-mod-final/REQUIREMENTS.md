## Description
Field Trip is an app that allows a user to see airlines, flights, and passengers. Airlines have many flights, and flights belong to airlines. This one to many relationship is already set up for you. You will need to set up the table and relationship between passengers and flights. Flights have many passengers and passengers can have many flights. Make sure to read all instructions, tasks, and user stories before getting started. Also, take a look at your schema to see what you're working with to start.
## Tasks
1. Create a passengers table
  - Passengers will have a name and age
2. Set up a many to many relationship between flights and passengers
3. Complete the following user stories:
```
User Story 1, Flights Index Page
As a visitor
When I visit the flights index page ('/flights')
I see a list of all flight numbers
And under each flight number I see the names of all that flights passengers 
```
```
User Story 2, Airlines Show Page
As a visitor
When I visit an airlines show page ('/airlines/:id')
I see a unique list of passengers that have flights from that airline
```
```
User Story 3, Remove a Passenger from a Flight
As a visitor
When I visit the flights index page
Next to each passengers name
I see a link to remove that passenger from that flight
When I click on that link
I'm returned to the flights index page 
And I no longer see that passenger listed under that flight
```
```
User Story 4, Passengers Index Page
As a visitor
When I visit a passengers index page ('/passengers')
I see names of all passengers
And next to the passengers name, I see the number of flights that the passenger has
Collapse
