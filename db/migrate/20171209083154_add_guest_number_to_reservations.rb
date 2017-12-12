class AddGuestNumberToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :Guest, :integer
  end
end
