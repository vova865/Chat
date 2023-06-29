class ChatRoomsChannel < ApplicationCable::Channel
  def subscribe
    stream_from "chat_rooms_#{params['chat_room_id']}_channel"
  end

  def unsubsribed
    # some logic
  end

  def send_message(data)
    current_user.messages.create!(body: data['message'], chat_room_id: data['chat_room_id'])
  end
end
