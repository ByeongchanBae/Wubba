class DashboardsController < ApplicationController
  def show
    @user = current_user
    unread_notifications = current_user.notifications.unread
    unread_notifications.each do |unread_notification|
      unread_notification.read_at = DateTime.current.to_date
      unread_notification.save
    end
    set_notifications
  end

  private

  def set_notifications
    @notifications = Notification.where(recipient: current_user).reverse
  end
end
