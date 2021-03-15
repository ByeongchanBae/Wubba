class DashboardsController < ApplicationController
  def show
    @user = current_user
    set_notifications
  end

  private

  def set_notifications
    @notifications = Notification.where(recipient: current_user).unread
  end
end
