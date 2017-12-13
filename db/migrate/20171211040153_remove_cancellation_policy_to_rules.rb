class RemoveCancellationPolicyToRules < ActiveRecord::Migration[5.0]
  def change
    remove_column :rules, :cancellation_policy, :boolean
  end
end
