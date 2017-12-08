class RenamePropertyCategoryColumnToRooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :rooms, :property_category, :property_type
  end
end
