class BedroomsController < ApplicationController

	def create
		@bedroom = Bedroom.create
	end

	def edit
	end

	def update
	end

	private

	# def set_bedroom
	# 	@bedroom = Bedroom.find_by(params[:id])
	# end

end
