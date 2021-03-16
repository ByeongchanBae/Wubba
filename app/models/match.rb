class Match < ApplicationRecord
  belongs_to :matcher, class_name: "User"
  belongs_to :matchee, class_name: "User"
  has_many :match_messages, dependent: :destroy

  validates_uniqueness_of :matchee_id, scope: :matcher_id
  after_create :create_notifications
  after_update :create_notifications

  def partner(current_user)
    current_user == matcher ? matchee : matcher
  end

  private

  def create_notifications
    if self.status == 2
      notification = Notification.new(recipient: self.matcher, actor: self.matchee,
      action: 'matched', notifiable: self)
    elsif self.status == 1
      notification = Notification.new(recipient: self.matchee, actor: self.matcher,
      action: 'matched', notifiable: self)
     ActionCable.server.broadcast(
        "notifications:#{notification.recipient_id}",
        ActionController::Base.new().render_to_string(partial: "notifications/notification", locals: { notification: notification })
      ) if notification.save
    else self.status == 0
    end
  end
end
