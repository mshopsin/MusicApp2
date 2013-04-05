class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])
    @album.save
    redirect_to albums_path
  end

  def destroy
    Album.find(params[:band]).destroy
    redirect_to albums_path
  end
end

