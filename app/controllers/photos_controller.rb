class PhotosController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@photo = Photo.new
	end

	def create
		@room = Room.find(params[:room_id])
		@photo = @room.photos.new(photo_params)
		if @photo.save
			redirect_to new_room_explanatory_path(@room)
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	private

	def photo_params
   params.require(:photo).permit(:image).merge(room_id: params[:room_id], user_id: current_user.id)
 end

end
