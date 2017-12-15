class GroupsController < ApplicationController
  def index
  end

  def show
    @group = Group.find(params[:id])
    @message = Message.new
    @reservation = Reservation.new
  end


end
