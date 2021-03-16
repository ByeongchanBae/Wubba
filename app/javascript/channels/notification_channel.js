import consumer from "./consumer";

const initNotificationCable = () => {
  const notificationsContainer = document.getElementById('notifications');
  if (notificationsContainer) {
    consumer.subscriptions.create({ channel: "NotificationChannel", user_id: currentUserId }, {
      received(data) {
        notificationsContainer.insertAdjacentHTML('afterBegin', data)
        // PUT NOTIFICATION COUNT
        //  ADD EVENT LISTENER
        // update the bell button to 2 document.queyselector bell add classlist

      },
      connected() {
      }
    });
  }
}

export { initNotificationCable };
