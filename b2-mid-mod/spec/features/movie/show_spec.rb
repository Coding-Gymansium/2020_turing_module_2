require 'rails_helper'

RSpec.describe "the Movie Show page" do
  before :each do
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
  end

  describe "When I visit a movie's show page.
I see the movie details" do

    it "displays movie attributes" do
      visit "/movies/#{@movie_1.id}"
      expect(page).to have_content(@movie_1.title)
      expect(page).to have_content(@movie_1.creation_year)
      expect(page).to have_content(@movie_1.genre)
      expect(page).to have_content(@actor_2.name)
    end
  end
end
