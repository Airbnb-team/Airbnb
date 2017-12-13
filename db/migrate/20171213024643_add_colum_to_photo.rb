class AddColumToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :status, :integer
  end
end
