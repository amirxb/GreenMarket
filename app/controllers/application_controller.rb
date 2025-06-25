class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_unread_notifications
  before_action :set_cart_and_cart_item_count

  def set_unread_notifications
    return unless user_signed_in?

    @unread_notifications = current_user.notifications.where(read: false)
  end

  def set_cart_and_cart_item_count
    return unless user_signed_in?

    @cart = current_user.carts.find_by(status: 'active') || current_user.carts.create(status: 'active')
    @cart_item_count = @cart.cart_items.sum(:quantity)
  end
  protected

  def configure_permitted_parameters
    added_attrs = [:name, :surname, :dob, :role, :username, :profile_picture,:bio, :location]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end
end
