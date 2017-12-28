class ChangeOverviewToExplanatories < ActiveRecord::Migration[5.0]
  def change
    # change_column :Explanatories, :overview, :text
    change_column :explanatories, :overview, :text
  end
end
