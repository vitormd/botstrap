module Telegram
  class InlineQuery < ApplicationRecord
    belongs_to :from
  end
end
