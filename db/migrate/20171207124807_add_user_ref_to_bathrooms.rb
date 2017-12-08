class AddUserRefToBathrooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :bathrooms, :user, foreign_key: true
  end
end
