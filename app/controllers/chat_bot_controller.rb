class ChatBotsController < ApplicationController
  def telegram_webhook
    chat_bot(:telegram).update(params[:update])
  end

  private

  def chat_bot(platform = nil)
    @chat_bot ||= ChatBot.find_by(platform: platform, token: params[:id])
  end
end
