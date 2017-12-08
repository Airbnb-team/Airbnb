class RoomsController < ApplicationController

	def index
	end

	def new
		@room = Room.new
	end

	def create
		@room = Room.new(room_params)
		if @room.save
			redirect_to new_room_bedroom_path(@room)
		else
			render :new
		end
	end

	def continue
		@room = Room.find(params[:format])
	end

	def edit
	end

	def update
	end

	private

	def room_params
		params.require(:room).permit(:property_type, :home_type, :room_type, :guest_only).merge(user_id: current_user.id)
  end

end
