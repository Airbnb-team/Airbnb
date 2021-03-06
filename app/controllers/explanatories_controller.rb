class ExplanatoriesController < ApplicationController

	def new
		@room = Room.find(params[:room_id])
		@explanatory = Explanatory.new
	end

	def create
		@room = Room.find(params[:room_id])
		@explanatory = @room.explanatories.new(explanatory_params)
		if @explanatory.save
			redirect_to new_room_rule_path(@room)
		else
			render :new
		end
	end

	def edit
		@room = Room.find(params[:room_id])
	  @explanatory = @room.explanatories.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
    @explanatory = @room.explanatories.find(params[:id])
    if @explanatory.update(explanatory_params)
      redirect_to landing_rooms_path(@room)
    end
	end

	private

	def explanatory_params
   params.require(:explanatory).permit(
   	:title,
   	:overview,
   	:space,
   	:guest_access,
   	:guest_interraction,
   	:other_things_to_note,
   	).merge(room_id: params[:room_id], user_id: current_user.id)
 end

end
