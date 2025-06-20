class FarmersController < ApplicationController
  def index
    @farmers = Farmer.all
    # @farmer = Farmer.find(params[:farmer_id])
  end

  def show
    @farmer = Farmer.find(params[:id])
    @products = @farmer.products
  end
end
