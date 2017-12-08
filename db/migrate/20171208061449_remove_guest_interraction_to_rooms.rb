class RemoveGuestInterractionToRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :guest_interraction, :string
  end
end
