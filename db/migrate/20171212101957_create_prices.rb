class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
    	t.references :user, foreign_key: true, null: false
      t.references :room, foreign_key: true, null: false
      t.integer :basic_charge
      t.integer :cleaning_fee
      t.integer :deposit_money
      t.integer :additional_fee
      t.integer :weekend_rates
      t.timestamps
    end
  end
end
