class RoomsController < ApplicationController

	def index
	end

	def new
		@room = Room.new
		# @room = Room.find(params[:id])
	end

	def create
		# @room = Room.find(params[:id])
		@room = Room.create
  #   if @room.save
  #     redirect_to :root
    # else
    #   render :new
    # end
	end

	def continue
	end

	def edit
	end

	def show

		@reservation = Reservation.new
	end

	def update
	end

	private

    def reservation_params
      params.permit(:check_in, :check_out, :room_id).merge(user_id:current_user.id)
    end

	# def room_params
	# 	params.require(:room).permit(:property_type, :home_type, :room_type, :guest_interraction).merge(user_id: current_user.id)
	# end

end
