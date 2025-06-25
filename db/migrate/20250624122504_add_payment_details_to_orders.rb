class AddPaymentDetailsToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :card_number, :string
    add_column :orders, :expiration, :string
    add_column :orders, :cvv, :string
  end
end
