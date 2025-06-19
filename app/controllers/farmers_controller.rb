class FarmersController < ApplicationController
  def index
    @farmers = Farmer.all
  end

  def show
  end
end
