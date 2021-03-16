class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_create :create_notifications

  private

  def create_notifications
    notification = Notification.create do |notification|
    notification.notifiable_type = "comment"
    notification.actor = self.user
    notification.recipient = self.post.user
    notification.notifiable_id = self
    notification.action = "commented"
  end
  ActionCable.server.broadcast(
    "notifications:#{notification.recipient_id}",
    ActionController::Base.new().render_to_string(partial: "notifications/notification", locals: { notification: notification })
    )
  end
end
