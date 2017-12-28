class ChangePropertyTypeToRooms < ActiveRecord::Migration[5.0]
  def up
    # change_column :Rooms, :property_type, :string, null: false, default: 0
    change_column :rooms, :property_type, :string, null: false, default: 0
  end

  def down
    # change_column :Rooms, :property_type, :intger, null: true
    change_column :rooms, :property_type, :intger, null: true
  end
end
