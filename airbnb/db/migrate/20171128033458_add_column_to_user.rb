class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :sex, :string
    add_column :users, :birthday, :string
    add_column :users, :langage, :string
    add_column :users, :currency, :string
    add_column :users, :intro, :text
    add_column :users, :host, :boolean
  end
end
