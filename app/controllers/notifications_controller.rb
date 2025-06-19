class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @notifications = current_user.notifications.order(created_at: :desc)
  end

  def test_create
    Notification.create(
      user: current_user,
      content: "Your order #TEST has been placed successfully.",
      read: false
    )
    redirect_to notifications_path, notice: "Test notification created!"
  end
end
