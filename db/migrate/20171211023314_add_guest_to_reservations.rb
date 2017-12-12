class AddGuestToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :guest_count, :integer
  end
end
