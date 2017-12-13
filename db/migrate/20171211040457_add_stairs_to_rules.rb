class AddStairsToRules < ActiveRecord::Migration[5.0]
  def change
    add_column :rules, :stairs, :boolean
  end
end
