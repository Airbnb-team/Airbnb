class RemoveGuestToReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :Guest, :integer
  end
end
