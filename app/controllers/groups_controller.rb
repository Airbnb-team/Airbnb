class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @groups_travel = @groups.where.not(room_id: current_user.rooms.ids)
    @groups_hosting = @groups.where(room_id: current_user.rooms.ids)
  end
end
