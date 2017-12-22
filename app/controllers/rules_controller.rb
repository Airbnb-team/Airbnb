class RulesController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@rule = Rule.new
	end

	def create
		@room = Room.find(params[:room_id])
		@rule = @room.rules.new(rule_params)
		if @rule.save
			redirect_to new_room_price_path(@room)
		else
			render :new
		end
	end

	def edit
		@room = Room.find(params[:room_id])
	  @rule = @room.rules.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
    @rule = @room.rules.find(params[:id])
    if @rule.update(rule_params)
      redirect_to landing_rooms_path(@room)
    end
	end

	private

	def rule_params
   params.require(:rule).permit(
   	:children_for_2_12,
    :for_infants_under_2,
    :for_pets,
    :smoking,
    :parties,
    :stairs,
    :noises,
    :pets,
    :spaces,
    :minimum_amenities,
   	).merge(room_id: params[:room_id], user_id: current_user.id)
 end

end
