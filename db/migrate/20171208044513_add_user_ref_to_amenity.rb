class AddUserRefToAmenity < ActiveRecord::Migration[5.0]
  def change
    add_reference :amenities, :user, foreign_key: true
  end
end
