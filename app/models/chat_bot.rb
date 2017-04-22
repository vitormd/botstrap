class ChatBot < ApplicationRecord
  enum platform: { telegram: 0 }

  validates :name, presence: true
  validates :token, presence: true
  validates :platform, presence: true
end
