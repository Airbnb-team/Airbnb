class RenameAdressColumnToLocations < ActiveRecord::Migration[5.0]
  def change
  	rename_column :locations, :adress, :address
  end
end
