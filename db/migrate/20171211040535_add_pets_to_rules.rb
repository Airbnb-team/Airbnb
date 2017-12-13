class AddPetsToRules < ActiveRecord::Migration[5.0]
  def change
    add_column :rules, :pets, :boolean
  end
end
