class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :user_id, foreign_key: true, null:false
      t.integer :room_id, foreign_key: true, null:false
      t.string :image

      t.timestamps
    end
  end
end
