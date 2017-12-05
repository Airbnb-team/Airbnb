class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
    	t.integer :room_id, foreign_key: true, null:false
    	t.string :country
    	t.integer :postal_code
    	t.string :prefecture
    	t.string :city
    	t.string :adress
    	t.string :building_name
      t.timestamps
    end
  end
end
