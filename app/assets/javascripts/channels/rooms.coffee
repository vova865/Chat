App.global_chat = App.cable.subscriptions.create {
  channel: "ChatRoomsChannel"
  chat_room_id: ''
},
  connected: ->
# Called when the subscription is ready for use on the server

  disconnected: ->
# Called when the subscription has been terminated by the server

  received: (data) ->
# Data received

  send_message: (message, chat_room_id) ->
    @perform 'send_message', message: message, chat_room_id: chat_room_id


jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')
  if $('#messages').length > 0

    App.global_chat = App.cable.subscriptions.create {
      channel: "ChatRoomsChannel"
      chat_room_id: messages.data('chat-room-id')
    },
      connected: ->
# Called when the subscription is ready for use on the server

      disconnected: ->
# Called when the subscription has been terminated by the server

      received: (data) ->
# Data received

      send_message: (message, chat_room_id) ->
        @perform 'send_message', message: message, chat_room_id: chat_room_id