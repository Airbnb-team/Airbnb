class AddUserIdToBedrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :bedrooms, :user_id, :integer
  end
end
