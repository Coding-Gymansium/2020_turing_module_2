## Overview
We are creating an application to track movies. 
We have 
  studios, which have movies, and 
  movies have several actors, and 
  actors can be in several movies.

* Studios have a name and location
* Movies have a title, creation year, and genre
* Actors have a name and age

You will need to create all the migrations.

## User Stories
Story 1
As a user,
When I visit the studio index page
I see a list of all of the movie studios
And underneath each studio, I see the names of all of its movies.

Story 2
As a user,
When I visit a movie's show page.
I see the movie's title, creation year, and genre,
and a list of all its actors from youngest to oldest.
And I see the average age of all of the movie's actors

Story 3
As a user,
When I visit a movie show page,
I see a form for an actors name
and when I fill in the form with an existing actor's name
I am redirected back to that movie's show page
And I see the actor's name listed
(You do not have to test for a sad path, for example if the id is not an existing actor)

Extension: 
Story 4
As a user,
When I visit an actor's show page
I see that actors name and age 
And I see a unique list of all of the actors this particular actor has worked with.

## Tasks

  - [x] Initial Set up
  - [x] Models tests and models
  - [x] Story 1
  - [x] Story 2
  - [] Story 3
  - [] Extension - Story 4

_______________________________________________________
### Initial set up
- [x] Completed instrucitons set up
- [x] create tables
- [x] create relationships
    rails g migration CreateMovieActors actor:references movie:references
    rails g migration AddMoviesToStudios movie:references
    rails g migration AddStudiosToMovies studio:references
- [x] create spec/models and corresponding models

### Story 1
- [x] Done
- [x] Tests. Set up and Pass

As a user,
When I visit the studio index page
I see a list of all of the movie studios
And underneath each studio, I see the names of all of its movies.

#### Tasks
As a user,
  - [x] studio index page
  - [x] When I visit the studio index page I see a list of all of the movie studios
  - [x] And underneath each studio, I see the names of all of its movies.


### Story 2
- [x] Done
- [x] Tests. Set up and Pass

As a user,
When I visit a movie's show page.
I see the movie's title, creation year, and genre,
and a list of all its actors from youngest to oldest.
And I see the average age of all of the movie's actors

#### Tasks
As a user,
  - [x] movie show page
  - [] When I visit the movie show page I see 
    - [x] movie's title, creation year, and genre,
    - [x] a list of all its actors from youngest to oldest.
    - [x] I see the average age of all of the movie's actors

### Story 3
- [] Done
- [] Tests. Set up and Pass

As a user,
When I visit a movie show page,
I see a form for an actors name
and when I fill in the form with an existing actor's name
I am redirected back to that movie's show page
And I see the actor's name listed
(You do not have to test for a sad path, for example if the id is not an existing actor)

#### Tasks
As a user When I visit a movie show page,
  - [] I see a form for an actors name
  - [] when I fill in the form with an existing actor's name (the existing actor gets added to the movie)
  - [] I am redirected back to that movie's show page
  - [] I see the actor's name listed