class SpacesController < ApplicationController

	def create
		@space = Space.create(set_space)
	end

	def edit
	end

	def update
	end

	private

	def set_space
		@space = Space.find_by(params[:id])
	end

end
