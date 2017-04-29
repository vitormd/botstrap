module Telegram
  class Chat < ApplicationRecord
    validates :type, presence: true
  end
end
