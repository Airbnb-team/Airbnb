class PhotosController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
	  @photo = Photo.new
	end

	def create
		@room = Room.find(params[:room_id])
	  @photo = Photo.create(set_photo)
	end

	def destroy
		@photo = Photo.find(params[:id])
	  @photo.destroy
	end

	def edit
		@room = Room.find(params[:room_id])
    @photo = Photo.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
    @photo = Photo.find(params[:id])
    if @photo.update(set_photo)
      redirect_to landing_rooms_path(@room)
    end
	end

	private

	def photo_params
  	params.require(:photo).permit(:image).merge(room_id: params[:room_id], user_id: current_user.id)
  end

  def set_photo
  	params.require(:photo).permit(:room_id).merge(image: params[:file], user_id: current_user.id)
  end

end
