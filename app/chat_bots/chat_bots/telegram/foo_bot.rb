module ChatBots
  module Telegram
    class FooBot < ChatBotBase
      def update(update)
        message = update[:message]
        chat_id = update[:message][:chat][:id]

        case update[:message][:text]
        when 'Hi'
          @api.sendMessage(
            chat: chat_id,
            text: 'Hello there!',
            reply_to_message_id: message[:id])
        else
          @api.sendMessage(
            chat: chat_id,
            text: "Oops, I didn't understand that",
            reply_to_message_id: message[:id])
        end
      end
    end
  end
end
