class RulesController < ApplicationController

	def create
		@rule = Rule.create(set_room)
	end

	def edit
	end

	def update
	end

	private

	def set_room
		@rule = Rule.find_by(params[:id])
	end

end
