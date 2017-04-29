class ChatBot < ApplicationRecord
  enum platform: { telegram: 0 }

  validates :name, presence: true
  validates :token, presence: true
  validates :platform, presence: true

  def telegram_update(update)
    "Telegram::#{constantized_name}".constantize.new(token).update(update)
  end

  private

  def constantized_name
    name.titleize.delete ' '
  end
end
