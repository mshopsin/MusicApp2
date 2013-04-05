
class BandsController < ApplicationController


  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(params[:band])
    @band.save
    redirect_to band_path(@band.id)
  end

  def destroy
    Band.find(params[:id]).destroy

    redirect_to bands_path
  end

end