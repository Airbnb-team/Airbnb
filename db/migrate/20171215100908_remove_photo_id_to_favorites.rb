class RemovePhotoIdToFavorites < ActiveRecord::Migration[5.0]
  def change
    remove_column :favorites, :photo_id, :string
  end
end
