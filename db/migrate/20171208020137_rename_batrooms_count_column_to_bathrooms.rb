class RenameBatroomsCountColumnToBathrooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bathrooms, :batrooms_count, :bathrooms_count
  end
end
