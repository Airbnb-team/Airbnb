class RemoveAdditionalRulesToRules < ActiveRecord::Migration[5.0]
  def change
    remove_column :rules, :additional_rules, :integer
  end
end
