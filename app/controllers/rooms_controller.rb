class RoomsController < ApplicationController

	def create
		@room = Room.create(set_room)
	end

	def edit
	end

	def update
	end

	private

	def set_room
		@room = Room.find_by(params[:id])
	end

end
