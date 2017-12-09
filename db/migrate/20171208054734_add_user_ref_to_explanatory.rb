class AddUserRefToExplanatory < ActiveRecord::Migration[5.0]
  def change
    add_reference :explanatories, :user, foreign_key: true
  end
end
