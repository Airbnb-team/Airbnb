class FavoritesController < ApplicationController

  before_action :set_variables, only: [:create, :destroy]

  def create
  	@favorite = Favorite.create(user_id: current_user.id, room_id: params[:room_id])
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, room_id: params[:room_id])
  	favorite.destroy
  end

  private

  def set_variables
    @room = Room.find(params[:room_id])
    @id_heart = "#heart-#{@room.id}"
  end

end
