class RenameHomeTypeColumnToRooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :rooms, :home_type, :home_category
  end
end
