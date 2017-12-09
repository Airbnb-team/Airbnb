class RulesController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@rule = Rule.new
	end

	def create
		@room = Room.find(params[:room_id])
		@rule = @room.rules.new(rule_params)
		if @rule.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	private

	def rule_params
   params.require(:rule).permit(
   	:children_for_2_12,
    :for_infants_under_2,
    :for_pets,
    :smoking,
    :parties,
    :additional_rules,
    :check_in_start_time,
    :check_in_end_time,
    :check_checkout_time,
    :cancellation_policy,
   	).merge(room_id: params[:room_id], user_id: current_user.id)
 end

end
