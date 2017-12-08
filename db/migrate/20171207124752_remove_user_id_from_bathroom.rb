class RemoveUserIdFromBathroom < ActiveRecord::Migration[5.0]
  def change
    remove_column :bathrooms, :user_id, :integer
  end
end
