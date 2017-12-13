class AddRoomRefToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_reference :photos, :room, foreign_key: true
  end
end
