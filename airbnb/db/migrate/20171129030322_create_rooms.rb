class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :user_id, null:false
      t.string :langage, null:false
      t.string :title, null:false
      t.integer :overview, null:false
      t.text :space, null:false
      t.text :guest_access, null:false
      t.integer :guest_interraction, null:false
      t.text :other_things_to_note, null:false
      t.text :neighborhood, null:false
      t.integer :property_type, null:false
      t.integer :home_type, null:false
      t.integer :room_type, null:false
      t.integer :room_setup, null:false
      t.integer :bedrooms, null:false
      t.integer :guest_capacity, null:false
      t.integer :prepared_beds, null:false
      t.integer :bath_room, null:false

      t.timestamps
    end
  end
end
