module Telegram
  class User < ApplicationRecord
    validates :first_name, presence: true
  end
end
