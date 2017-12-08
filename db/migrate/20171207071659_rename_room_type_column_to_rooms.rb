class RenameRoomTypeColumnToRooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :rooms, :room_type, :room_category
  end
end
