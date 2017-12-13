class RemoveCheckInEndTimeToRules < ActiveRecord::Migration[5.0]
  def change
    remove_column :rules, :check_in_end_time, :boolean
  end
end
