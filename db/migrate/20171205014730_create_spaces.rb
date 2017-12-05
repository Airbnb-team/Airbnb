class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
    	t.integer :room_id, foreign_key: true, null:false
    	t.boolean :pool
      t.boolean :elevator
      t.boolean :washing_machine
      t.boolean :gym
      t.boolean :kitchen
      t.boolean :parking
      t.boolean :jacuzzi
      t.boolean :washing_and_drying_machine
      t.timestamps
    end
  end
end
