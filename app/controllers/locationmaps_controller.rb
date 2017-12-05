class LocationmapsController < ApplicationController

	def create
		@locationmap = Locationmap.create(set_locationmap)
	end

	def edit
	end

	def update
	end

	private

	def set_locationmap
		@locationmap = Locationmap.find_by(params[:id])
	end

end
