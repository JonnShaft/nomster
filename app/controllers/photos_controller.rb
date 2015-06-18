class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photo_params)
		redirect_to place_photos_path(@place)
	end

	
	def index
	end

	private

	def photo_params
		params.require(:photo) .permit(:caption)
	end
end