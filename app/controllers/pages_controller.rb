class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @farmer = Farmer.find(params[:farmer_id])
  end
end
