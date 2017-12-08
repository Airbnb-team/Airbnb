class RenamePropertyTypeColumnToRooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :rooms, :property_type, :property_category
  end
end
