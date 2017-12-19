class RemoveFavoritesCountToRoom < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :favorites_count, :string
  end
end
