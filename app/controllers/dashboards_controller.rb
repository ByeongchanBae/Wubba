class DashboardsController < ApplicationController
  def show
    @list_of_possibles = current_user.possibles
    @user = current_user
    set_notifications
  end

  private

  def set_notifications
    @notifications = Notification.where(recipient: current_user).unread
  end
end


# show matches matched
