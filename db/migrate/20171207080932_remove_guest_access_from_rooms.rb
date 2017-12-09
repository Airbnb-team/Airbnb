class RemoveGuestAccessFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :guest_access, :text
  end
end
