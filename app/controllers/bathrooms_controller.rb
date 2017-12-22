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
		@room = Room.find(params[:room_id])
		@bathroom = @room.bathrooms.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
		@bathroom = @room.bathrooms.find(params[:id])
		if @bathroom.update(bathroom_params)
			redirect_to landing_rooms_path(@room)
		end
	end

	private

	def bathroom_params
		params.require(:bathroom).permit(:bathrooms_count).merge(room_id: params[:room_id], user_id: current_user.id)
	end

end
