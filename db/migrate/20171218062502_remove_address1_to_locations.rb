class RemoveAddress1ToLocations < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :Address1, :string
  end
end
