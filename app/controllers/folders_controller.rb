class FoldersController < ApplicationController
	def index
		@folders = Folder.all
	end

	def show
		@folder=Folder.find(params[:id])
	end

	def new
		@folder = Folder.new
	end

	def destroy
		@folder=Folder.find(params[:id])
		@folder.destroy
    	redirect_to root_path
	end

	def create
		@folder=Folder.create(folder_params)
		if @folder.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	private
	def folder_params
		params.require(:folder).permit(:name)
	end
end