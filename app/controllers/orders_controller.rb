class OrdersController < ApplicationController
  def new
  end

  def create
    flash[:notice] = "🎉 Payment successful! Thank you for your order."
    redirect_to root_path
  end
end
