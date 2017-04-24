Rails.application.routes.draw do
  post 'chat_bots/telegram/:id', to: 'chat_bots#telegram_webhook', as: 'telegram_webhook'
end
