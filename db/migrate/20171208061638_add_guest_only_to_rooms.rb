class AddGuestOnlyToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :guest_only, :boolean
  end
end
