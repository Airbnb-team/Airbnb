class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id, foreign_key: true, null:false
      t.integer :room_id, foreign_key: true, null:false
      t.integer :happiness, null:false
      t.text :comment_id, foreign_key: true, null:false
      t.integer :speed, null:false
      t.integer :behavior, null:false
      t.integer :score, null:false

      t.timestamps
    end
  end
end
