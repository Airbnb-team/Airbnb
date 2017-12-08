class RemoveGuestCapacityFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :guest_capacity, :integer
  end
end
