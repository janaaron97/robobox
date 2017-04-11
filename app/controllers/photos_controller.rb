class PhotosController < ApplicationController
  def index
    @photo = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create( user_params )
    if @photo.save
      redirect_to photos_path
    else
      render 'new'
    end
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:photo).permit(:avatar)
  end
end
