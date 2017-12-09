class CreateExplanatories < ActiveRecord::Migration[5.0]
  def change
    create_table :explanatories do |t|
    	t.string :title, null:false
      t.integer :overview, null:false
      t.text :space, null:false
      t.text :guest_access, null:false
      t.integer :guest_interraction, null:false
      t.text :other_things_to_note, null:false
      t.timestamps
    end
  end
end
