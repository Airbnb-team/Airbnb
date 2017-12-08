class RenameRoomCategoryColumnToRooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :rooms, :room_category, :room_type
  end
end
