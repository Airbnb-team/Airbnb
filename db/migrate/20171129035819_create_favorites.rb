class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id, foreign_key: true, null:false
      t.integer :photo_id, foreign_key: true, null:false
      t.integer :room_id, foreign_key: true, null:false

      t.timestamps
    end
  end
end
