class AddColumn2ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :image, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
