class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    @song.save
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update_attributes(params[:song])

    redirect_to songs_path
  end

  def destroy
    Song.find(params[:id]).destroy
    redirect_to songs_path
  end
end