class RenameHomeCategoryColumnToRooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :rooms, :home_category, :home_type
  end
end
