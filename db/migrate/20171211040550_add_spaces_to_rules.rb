class AddSpacesToRules < ActiveRecord::Migration[5.0]
  def change
    add_column :rules, :spaces, :boolean
  end
end
