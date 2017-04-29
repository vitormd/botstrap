module Telegram
  class Message < ApplicationRecord
    validates :message_id, presence: true
    validates :date, presence: true
    validates :chat, presence: true
  end
end
