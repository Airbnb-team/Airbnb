class CreateLocationmaps < ActiveRecord::Migration[5.0]
  def change
    create_table :locationmaps do |t|
    	t.integer :room_id, foreign_key: true, null:false
      t.timestamps
    end
  end
end
