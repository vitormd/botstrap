class Telegram::Update < ApplicationRecord
  belongs_to :message
  belongs_to :inline_query
end
