class LocationsController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@location = Location.new

	end

	def create
		@room = Room.find(params[:room_id])
		@location = @room.locations.new(location_params)
		if @location.save
			redirect_to room_location_path(@room, @location)
		else
			render :new
		end
	end

	def show
		@location = Location.find(params[:id])
		gon.latitude = @location.latitude
		gon.longitude = @location.longitude
	end

	def edit
		@room = Room.find(params[:room_id])
    @location = @room.locations.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
    @location = @room.locations.find(params[:id])
    if @location.update(location_params)
      redirect_to landing_rooms_path(@room)
    end
	end

	private

	def location_params
		params.require(:location).permit(
   	:country,
   	:postal_code,
   	:prefecture,
   	:city,
   	:address,
   	:building_name,
   	).merge(room_id: params[:room_id], user_id: current_user.id)
 end

end
