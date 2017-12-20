class RoomsController < ApplicationController

	def toppage
		@rooms = Room.all
		@rooms = Room.page(params[:page]).per(8).order("created_at DESC")
	end

	def index
		session[:loc_search] = params[:search]
		@locations = Location.all.near(session[:loc_search], 5, order:'distance')

		@search = @locations.ransack(params[:q])
		@location_results = @search.result
    @arrRooms = @location_results.to_a
    # binding.pry
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

	def search
    @rooms = Room.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def introduce
  end

	def edit
	end

	def show
		@room = Room.find(params[:id])
		@rooms = Room.all
		@reservation = Reservation.new
	end

	def update
	end

	private

	def reservation_params
		params.require(:reservation).permit(:check_in, :check_out).merge(user_id: current_user.id, room_id: ":id")
	end

	def room_params
		params.require(:room).permit(:property_type, :home_type, :room_type, :guest_only).merge(user_id: current_user.id)
  end

end
