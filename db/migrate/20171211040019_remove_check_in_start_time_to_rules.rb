class RemoveCheckInStartTimeToRules < ActiveRecord::Migration[5.0]
  def change
    remove_column :rules, :check_in_start_time, :boolean
  end
end
