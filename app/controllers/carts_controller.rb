class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @cart = current_user.carts.find_by(status: 'active') || current_user.carts.create(status: 'active')
    @farmer = Farmer.find(params[:id])

  end
end
