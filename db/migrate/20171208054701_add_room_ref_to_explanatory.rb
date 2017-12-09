class AddRoomRefToExplanatory < ActiveRecord::Migration[5.0]
  def change
    add_reference :explanatories, :room, foreign_key: true
  end
end
