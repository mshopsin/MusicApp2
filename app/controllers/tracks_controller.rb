class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(params[:track])
    @track.save
    redirect_to tracks_path
  end


  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Song.find(params[:id])
    @track.update_attributes(params[:track])

    redirect_to tracks_path
  end

  def destroy
    Track.find(params[:id]).destroy
    redirect_to tracks_path
  end
end