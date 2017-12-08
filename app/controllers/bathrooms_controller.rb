class BathroomsController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@bathroom = Bathroom.new
	end

	def create
		@room = Room.find(params[:room_id])
		@bathroom = @room.bathrooms.new(bathroom_params)
		if @bathroom.save
			redirect_to new_room_location_path(@room)
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	private

	def bathroom_params
		params.require(:bathroom).permit(:bathrooms_count).merge(room_id: params[:room_id], user_id: current_user.id)
	end

end
