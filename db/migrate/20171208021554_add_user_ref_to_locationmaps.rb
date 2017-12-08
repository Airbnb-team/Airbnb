class AddUserRefToLocationmaps < ActiveRecord::Migration[5.0]
  def change
    add_reference :locationmaps, :user, foreign_key: true
  end
end
