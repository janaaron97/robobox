class PhotosController < ApplicationController
  def index
    @folder = Folder.all
  end

  def create
    @folder = Folder.find(params[:folder_id])
    @photo = @folder.photos.create(params[:photo].permit(:avatar))
    redirect_to folders_path
  end

  private

  def user_params
    params.require(:photo).permit(:avatar)
  end
end
