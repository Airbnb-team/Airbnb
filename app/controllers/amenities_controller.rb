class AmenitiesController < ApplicationController

	def create
		@amenity = Amenity.create(set_amenity)
	end

	def edit
	end

	def update
	end

	private

	def set_amenity
		@amenity = Amenity.find_by(params[:id])
	end

end
