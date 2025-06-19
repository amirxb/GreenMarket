class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @cart = current_user_cart
    @cart_item = @cart.cart_items.find_by(product: @product)

    if @cart_item
      @cart_item.quantity += 1
    else
      @cart_item = @cart.cart_items.build(product: @product, quantity: 1)
    end

    if @cart_item.save
      redirect_to cart_path(@cart), notice: 'Item added to cart!'
    else
      redirect_to @product, alert: 'Unable to add item to cart.'
    end
  end

  def update
    @cart_item = CartItem.find(params[:id])

    if @cart_item.update(cart_item_params)
      redirect_to cart_path(@cart_item.cart)
    else
      redirect_to cart_path(@cart_item.cart), alert: 'Unable to update item.'
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path, notice: "Item removed from cart."
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end

  def current_user_cart
    current_user.carts.find_by(status: 'active') ||
    current_user.carts.create(status: 'active')
  end
end
