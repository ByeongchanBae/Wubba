import consumer from "./consumer";

const initNotificationCable = () => {
  const notificationsContainer = document.getElementById('notifications');
  const notificationCountEl = document.querySelector('.js-notification-count');

    consumer.subscriptions.create({ channel: "NotificationChannel", user_id: currentUserId }, {
      received(data) {
        if (notificationsContainer) {
          notificationsContainer.insertAdjacentHTML('afterBegin', data);
        }
        if (notificationCountEl) {
          const notificationCount = parseInt(notificationCountEl.innerText, 10);
          notificationCountEl.innerText = notificationCount + 1;
        }
        // PUT NOTIFICATION COUNT
        //  ADD EVENT LISTENER
        // update the bell button to 2 document.queyselector bell add classlist
      },
      connected() {
      }
    });
}

export { initNotificationCable };
