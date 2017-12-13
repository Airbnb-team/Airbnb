class RemoveCheckCheckoutTimeToRules < ActiveRecord::Migration[5.0]
  def change
    remove_column :rules, :check_checkout_time, :boolean
  end
end
