class AddRoomRefToBathrooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :bathrooms, :room, foreign_key: true
  end
end
