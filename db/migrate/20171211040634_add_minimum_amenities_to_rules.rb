class AddMinimumAmenitiesToRules < ActiveRecord::Migration[5.0]
  def change
    add_column :rules, :minimum_amenities, :boolean
  end
end
