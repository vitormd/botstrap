class ChatBot < ApplicationRecord
  validates :name, presence: true
  validates :token, presence: true
end
