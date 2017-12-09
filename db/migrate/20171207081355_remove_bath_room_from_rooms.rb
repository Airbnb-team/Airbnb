class RemoveBathRoomFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :bath_room, :integer
  end
end
