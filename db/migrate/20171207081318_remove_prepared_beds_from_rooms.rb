class RemovePreparedBedsFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :prepared_beds, :integer
  end
end
