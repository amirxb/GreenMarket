class OrdersController < ApplicationController
  def new
    @cart = current_user.carts.find_by(status: 'active')
    @total_price = @cart.cart_items.sum { |item| item.product.price * item.quantity }
  end

  def create
    @cart = current_user.carts.find_by(status: 'active')

    @order = current_user.orders.build(
      cart: @cart,
      order_status: 'paid',
      payment_status: 'paid',
      pickup_date: Date.today + 1,
      pickup_time: Time.now + 1.hour
    )

    if @order.save
      @cart.update(status: 'completed')
      current_user.carts.create(status: 'active')

      farmer = @cart.cart_items.first.product.farmer
      Notification.create(
        user: current_user,
        content: "✔️ Your order with #{farmer.name} is confirmed. Pickup on #{@order.pickup_date} at #{@order.pickup_time.strftime('%H:%M')} at #{farmer.location}.",
        read: false
      )

      flash[:notice] = "🎉 Payment successful! Thank you for your order."
      redirect_to root_path
    else
      flash[:alert] = "There was a problem with your payment."
      render :new
    end
  end
end
