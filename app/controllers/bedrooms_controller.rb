class BedroomsController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@bedroom = Bedroom.new
	end

	def create
		@room = Room.find(params[:room_id])
		@bedroom = @room.bedrooms.new(bedroom_params)
		if @bedroom.save
			redirect_to new_room_bathroom_path(@room)
		else
			render :new
		end
	end

	def edit
		@room = Room.find(params[:room_id])
		@bedroom = @room.bedrooms.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
		@bedroom = @room.bedrooms.find(params[:id])
		if @bedroom.update(bedroom_params)
			redirect_to edit_room_bathroom_path(@room)
		end
	end

	private

	def bedroom_params
   params.require(:bedroom).permit(
   	:capacity_count,
   	:rooms_count,
   	:beds_count,
   	).merge(room_id: params[:room_id], user_id: current_user.id)
  end

end
