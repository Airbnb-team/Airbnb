class AddRoomidToGroups < ActiveRecord::Migration[5.0]
  def change
  add_column :groups, :room_id, :integer
  end
end
