class RemoveRoomIdToLocations < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :room_id, :string
  end
end
