class ChangeRoomTypeToRooms < ActiveRecord::Migration[5.0]
  def up
    # change_column :Rooms, :room_type, :string, null: false, default: 0
    change_column :rooms, :room_type, :string, null: false, default: 0

  end

  def down
    # change_column :Rooms, :room_type, :intger, null: true
    change_column :rooms, :room_type, :intger, null: true
  end
end
