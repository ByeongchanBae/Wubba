class MatchMessage < ApplicationRecord
  belongs_to :match
  belongs_to :user

  validates :content, presence: true
  after_create :create_notifications

  private

  def create_notifications
    notification = Notification.new(recipient: self.user == self.match.matchee ? self.match.matcher : self.match.matchee, actor: self.user, action: 'messaged', notifiable: self)
     ActionCable.server.broadcast(
        "notifications:#{notification.recipient_id}",
        ActionController::Base.new().render_to_string(partial: "notifications/notification", locals: { notification: notification })
      ) if notification.save
  end
end
