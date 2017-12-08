class RemoveLangageFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :langage, :string
  end
end
