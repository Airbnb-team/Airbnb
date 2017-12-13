class RemoveRoomIdToBedrooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :bedrooms, :room_id, :string
  end
end
