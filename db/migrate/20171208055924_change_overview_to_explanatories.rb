class ChangeOverviewToExplanatories < ActiveRecord::Migration[5.0]
  def change
    change_column :Explanatories, :overview, :text
  end
end
