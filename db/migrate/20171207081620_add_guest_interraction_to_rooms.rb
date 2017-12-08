class AddGuestInterractionToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :guest_interraction, :integer
  end
end
