class RemoveTitleFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :title, :string
  end
end
