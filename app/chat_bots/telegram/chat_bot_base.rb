require 'telegram/bot'

module Telegram
  class ChatBotBase
    def initialize(token)
      @api = ::Telegram::Bot::Api.new(token)
    end
  end
end
