class AddUserIdToBathrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :bathrooms, :user_id, :integer
  end
end
