class AddGuestToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :guest, :integer
  end
end
