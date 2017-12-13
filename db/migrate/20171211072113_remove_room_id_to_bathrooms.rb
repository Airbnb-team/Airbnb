class RemoveRoomIdToBathrooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :bathrooms, :room_id, :string
  end
end
