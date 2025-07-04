class FarmersController < ApplicationController
  def index
    if params[:search].present?
      @farmers = Farmer.where("location ILIKE :query OR name ILIKE :query OR region ILIKE :query", query: "%#{params[:search]}%")
    elsif params[:region].present?
      @farmers = Farmer.where("region ILIKE :query", query: "%#{params[:region]}%")
    else
      @farmers = Farmer.all
    end

    # The `geocoded` scope filters only flats with coordinates
    @markers = @farmers.geocoded.map do |farmer|
      {
        lat: farmer.latitude,
        lng: farmer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { farmer: farmer })
      }
    end
  end

  def show
    @farmer = Farmer.find(params[:id])
    @products = @farmer.products
  end
end
