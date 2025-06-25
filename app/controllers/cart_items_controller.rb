class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:cart_item][:product_id])
    @cart = current_user.carts.find_or_create_by(status: 'active')

    @cart_item = @cart.cart_items.find_by(product: @product)

    if @cart_item
      @cart_item.quantity += 1
    else
      @cart_item = @cart.cart_items.build(product: @product, quantity: 1)
    end

    if @cart_item.save
      flash[:notice] = "Item added to cart."
      redirect_to cart_path
    else
      flash[:alert] = "Failed to add item."
      redirect_to farmer_product_path(@product.farmer, @product)
    end
  end

  def update
    @cart_item = CartItem.find(params[:id])

    if @cart_item.update(cart_item_params)
      redirect_to cart_path
    else
      redirect_to cart_path, alert: 'Unable to update item.'
    end
  end

  def update_quantity
    @cart_item = CartItem.find(params[:id])
    new_quantity = params[:quantity].to_i

    if new_quantity > 0
      @cart_item.update(quantity: new_quantity)
    else
      @cart_item.destroy
    end

    redirect_to cart_path
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
