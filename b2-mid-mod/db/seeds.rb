# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@studio_1 = Studio.create!(name: "Studio 1", location: "some place")
    @studio_2 = Studio.create!(name: "Studio 2", location: "some place")
    @studio_3 = Studio.create!(name: "Studio 3", location: "some place")

    @movie_1 = @studio_1.movies.create!(title: "Movie 1", creation_year: 2010, genre: "action")
    @movie_2 = @studio_2.movies.create!(title: "Movie 2", creation_year: 2020, genre: "drama")
    @movie_3 = @studio_3.movies.create!(title: "Movie 3", creation_year: 2015, genre: "comedy")

    @actor_1 = Actor.create!(name: "actor 1", age: 30)
    @actor_2 = Actor.create!(name: "actor 2", age: 20)
    @actor_3 = Actor.create!(name: "actor 3", age: 25)
    @actor_4 = Actor.create!(name: "actor 4", age: 40)
    
    MovieActor.create!(actor: @actor_1, movie: @movie_1)
    MovieActor.create!(actor: @actor_2, movie: @movie_1)
    MovieActor.create!(actor: @actor_1, movie: @movie_2)
    MovieActor.create!(actor: @actor_4, movie: @movie_3)