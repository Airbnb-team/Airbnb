class PhotosController < ApplicationController

	def create
		@photo = Photo.create(set_room)
	end

	def edit
	end

	def update
	end

	private

	def set_room
		@photo = Photo.find_by(params[:id])
	end

end
