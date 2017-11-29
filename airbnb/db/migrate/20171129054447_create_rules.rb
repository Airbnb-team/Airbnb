class CreateRules < ActiveRecord::Migration[5.0]
  def change
    create_table :rules do |t|
      t.integer :children_for_2_12
      t.integer :for_infants_under_2
      t.integer :for_pets
      t.integer :smoking
      t.integer :parties
      t.integer :additional_rules
      t.boolean :check_in_start_time
      t.boolean :check_in_end_time
      t.boolean :check_checkout_time
      t.boolean :cancellation_policy

      t.timestamps
    end
  end
end
