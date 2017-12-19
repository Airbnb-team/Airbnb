class AddColumnToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :favorites_count, :integer
  end
end
