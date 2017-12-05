class LocationsController < ApplicationController

	def create
		@location = Location.create(set_location)
	end

	def edit
	end

	def update
	end

	private

	def set_location
		@location = Location.find_by(params[:id])
	end

end
