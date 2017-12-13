class RemoveRoomIdToPhotos < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :room_id, :string
  end
end
