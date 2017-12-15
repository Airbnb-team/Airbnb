class FavoritesController < ApplicationController

  before_action :set_room, only: [:create, :destroy]

  def create
  	@favorite = Favorite.create(user_id: current_user.id, room_id: params[:room_id])
    respond_to do |format|
      format.js
    end
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, room_id: params[:room_id])
  	favorite.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

end
