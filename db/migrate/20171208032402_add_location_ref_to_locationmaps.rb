class AddLocationRefToLocationmaps < ActiveRecord::Migration[5.0]
  def change
    add_reference :locationmaps, :location, foreign_key: true
  end
end
