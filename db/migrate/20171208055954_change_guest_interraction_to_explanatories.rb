class ChangeGuestInterractionToExplanatories < ActiveRecord::Migration[5.0]
  def change
    # change_column :Explanatories, :guest_interraction, :text
      change_column :explanatories, :guest_interraction, :text

  end
end
