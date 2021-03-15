import consumer from "./consumer";

const initNotificationCable = () => {
  const notificationsContainer = document.getElementById('notifications');
  if (notificationsContainer) {
    consumer.subscriptions.create({ channel: "NotificationChannel", user_id: currentUserId }, {
      received(data) {
        notificationsContainer.insertAdjacentHTML('afterBegin', data)
      },
      connected() {
      }
    });
  }
}

export { initNotificationCable };
