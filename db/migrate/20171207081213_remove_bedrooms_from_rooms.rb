class RemoveBedroomsFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :bedrooms, :integer
  end
end
