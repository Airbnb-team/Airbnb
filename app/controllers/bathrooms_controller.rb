class BathroomsController < ApplicationController

	def create
		@bathroom = Bathroom.create(set_bathroom)
	end

	def edit
	end

	def update
	end

	private

	def set_bathroom
		@bathroom = Bathroom.find_by(params[:id])
	end

end
