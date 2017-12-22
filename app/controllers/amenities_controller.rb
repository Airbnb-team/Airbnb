class AmenitiesController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@amenity = Amenity.new
	end

	def create
		@room = Room.find(params[:room_id])
		@amenity = @room.amenities.new(amenity_params)
		if @amenity.save
			redirect_to continue_rooms_path(@room)
		else
			render :new
		end
	end

	def edit
    @room = Room.find(params[:room_id])
    @amenity = @room.amenities.find(params[:id])
	end

	def update
    @room = Room.find(params[:id])
    @amenity = @room.amenities.find(params[:id])
      if @amenity.update(amenity_params)
        redirect_to landing_rooms_path(@room)
      end
	end

	private

	def amenity_params
   params.require(:amenity).permit(
    :room_id,
   	:pet,
    :elevator,
    :kid_friendly,
    :gym,
    :doorman,
    :breakfast,
    :suitable_for_events,
    :free_parking,
    :smoking_allowed,
    :wheelchair_accessible,
    :wireless_internet,
    :hot_tub,
    :air_conditioning,
    :kitchen,
    :cable_tv,
    :baby_bath,
    :baby_monitor,
    :babysitter,
    :bathtub,
    :changing_table,
    :childrend_books_and_toys,
    :childrens_dinnerware,
    :crib,
    :fireplace_guards,
    :indoor_fireplace,
    :pool,
    :shampoo,
    :hangers,
    :iron,
    :dryer,
    :hair_dryer,
    :Laptop,
    :tv,
    :washer,
    :heating,
    :free_parking_on_street,
    :private_entrance,
    :ethernet_connection,
    :game_console,
    :high_chair,
    :outlet_covers,
    :travel_crib,
    :room_darkening_shades,
    :stair_gates,
    :estable_corner_guardssentials,
    :table_corner_guards,
   	).merge(room_id: params[:room_id], user_id: current_user.id)
 end

end