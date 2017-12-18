class AddAddress1ToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :Address1, :string
  end
end
