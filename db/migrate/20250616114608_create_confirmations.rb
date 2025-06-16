class CreateConfirmations < ActiveRecord::Migration[7.1]
  def change
    create_table :confirmations do |t|
      t.references :order, null: false, foreign_key: true
      t.boolean :confirmed_by_farmer
      t.datetime :confirmation_date_time
      t.string :pickup_location

      t.timestamps
    end
  end
end
