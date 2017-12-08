class RemoveSpaceFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :space, :text
  end
end
