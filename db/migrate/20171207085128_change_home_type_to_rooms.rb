class ChangeHomeTypeToRooms < ActiveRecord::Migration[5.0]
  def up
    # change_column :Rooms, :home_type, :string, null: false, default: 0
    change_column :rooms, :home_type, :string, null: false, default: 0
  end

  def down
    # change_column :Rooms, :home_type, :intger, null: true
    change_column :rooms, :home_type, :intger, null: true
  end
end
