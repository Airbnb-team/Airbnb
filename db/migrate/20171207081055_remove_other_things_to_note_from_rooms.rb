class RemoveOtherThingsToNoteFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :other_things_to_note, :text
  end
end
