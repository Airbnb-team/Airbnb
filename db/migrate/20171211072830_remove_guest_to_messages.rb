class RemoveGuestToMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :guest, :integer
  end
end
