class CreateBathrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :bathrooms do |t|
    	t.integer :room_id, foreign_key: true, null:false
      t.integer :batrooms_count, null:false
      t.timestamps
    end
  end
end
