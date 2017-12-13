class AddRoomRefToLocations < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :room, foreign_key: true
  end
end
