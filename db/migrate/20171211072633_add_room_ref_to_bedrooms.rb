class AddRoomRefToBedrooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :bedrooms, :room, foreign_key: true
  end
end
