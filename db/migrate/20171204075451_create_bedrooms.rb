class CreateBedrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :bedrooms do |t|
      t.integer :room_id, foreign_key: true, null:false
      t.integer :capacity_count, null:false
      t.integer :rooms_count, null:false
      t.integer :beds_count, null:false
      t.timestamps
    end
  end
end
