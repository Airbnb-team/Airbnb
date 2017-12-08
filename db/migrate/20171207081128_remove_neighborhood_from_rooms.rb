class RemoveNeighborhoodFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :neighborhood, :text
  end
end
