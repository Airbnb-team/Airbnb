class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id, foreign_key: true, null:false
      t.integer :room_id, foreign_key: true, null:false
      t.date :check_in, null:false
      t.date :check_out, null:false

      t.timestamps
    end
  end
end
