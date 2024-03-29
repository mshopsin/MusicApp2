class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params[:artist])
    @artist.save
    redirect_to artists_path
  end


  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes(params[:artist])

    redirect_to artists_path
  end

  def destroy
    Artist.find(params[:id]).destroy
    redirect_to artists_path
  end
end