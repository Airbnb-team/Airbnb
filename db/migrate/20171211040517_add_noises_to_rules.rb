class AddNoisesToRules < ActiveRecord::Migration[5.0]
  def change
    add_column :rules, :noises, :boolean
  end
end
