class RemoveRoomSetupFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :room_setup, :integer
  end
end
