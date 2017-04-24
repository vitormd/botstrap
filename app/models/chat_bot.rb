class ChatBot < ApplicationRecord
  enum platform: { telegram: 0 }

  validates :name, presence: true
  validates :token, presence: true
  validates :platform, presence: true

  def update(platform_update)
    case platform
    when :telegram
      telegram_update(platform_update)
    end
  end

  private

  def telegram_update(update)

  end
end
