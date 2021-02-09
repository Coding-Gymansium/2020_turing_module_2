class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(artist_params[:id])
  end

  def new

  end

  def edit
    @artist = Artist.find(artist_params[:id])
  end

  def update
    Artist.update(artist_params)
    redirect_to action: "show", id: artist_params[:id]
  end

  def create
    Artist.create(artist_params)
    redirect_to artists_path
  end

  private
  def artist_params
    params.permit(:name, :id)
  end
end
