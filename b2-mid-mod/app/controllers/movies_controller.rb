class MoviesController < ApplicationController

  def show
    @movie = Movie.find(movie_params[:id])
  end

  private
  def movie_params
    params.permit(:id, :title, :creation_year, :genre)
  end
end