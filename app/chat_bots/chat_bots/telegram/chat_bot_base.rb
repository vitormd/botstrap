require 'telegram/bot'

module ChatBots
  module Telegram
    class ChatBotBase
      def initialize(token)
        @api = ::Telegram::Bot::Api.new(token)
      end
    end
  end
end
