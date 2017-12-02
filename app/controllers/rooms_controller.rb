class RoomsController < ApplicationController

	def index
	end

	def create
		@room = Room.create(set_room)
	end

	def new
	end

	def edit
	end

	def show
	end

	def update
	end

	private

	def set_room
		@room = Room.find_by(params[:id])
	end

end
