class OrdersController < ApplicationController
  def new
    @cart = current_user.carts.find_by(status: 'active')
    @total_price = @cart.cart_items.sum { |item| item.product.price * item.quantity }
  end

  def create
    @cart = current_user.carts.find_by(status: 'active')

    # Create the order and associate it with the cart
    @order = current_user.orders.build(
      cart: @cart,
      order_status: 'paid',
      payment_status: 'paid',
      pickup_date: Date.today + 1, # fake data
      pickup_time: Time.now + 1.hour # fake data
    )

    if @order.save
      @cart.update(status: 'completed') # mark old cart as completed
      current_user.carts.create(status: 'active') # start fresh cart

      flash[:notice] = "🎉 Payment successful! Thank you for your order."
      redirect_to root_path
    else
      flash[:alert] = "There was a problem with your payment."
      render :new
    end
  end
end
