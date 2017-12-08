class AddUserRefToBedrooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :bedrooms, :user, foreign_key: true
  end
end
