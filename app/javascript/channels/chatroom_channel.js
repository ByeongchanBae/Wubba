import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.matchId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
         messagesContainer.insertAdjacentHTML('beforeend', data.replace("myself", "partner"));
      },
    });
  }
}

export { initChatroomCable };
