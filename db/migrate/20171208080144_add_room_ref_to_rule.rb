class AddRoomRefToRule < ActiveRecord::Migration[5.0]
  def change
    add_reference :rules, :room, foreign_key: true
  end
end
