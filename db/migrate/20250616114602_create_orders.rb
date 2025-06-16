class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.date :pickup_date
      t.time :pickup_time
      t.string :payment_status
      t.string :order_status

      t.timestamps
    end
  end
end
