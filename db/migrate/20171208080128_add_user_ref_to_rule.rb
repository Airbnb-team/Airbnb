class AddUserRefToRule < ActiveRecord::Migration[5.0]
  def change
    add_reference :rules, :user, foreign_key: true
  end
end
