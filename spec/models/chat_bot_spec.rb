require 'rails_helper'

RSpec.describe ChatBot, type: :model do
  describe 'validations' do
    let(:name) { 'BotName' }
    let(:token) { 'botToken' }
    let(:platform) { :telegram }
    subject(:chat_bot) { build(:chat_bot, name: name, token: token, platform: platform) }

    describe 'name' do
      context 'when present' do
        it 'is valid' do
          expect(chat_bot.valid?).to eq true
        end
      end

      context 'when nil' do
        let(:name) { nil }

        it 'is invalid' do
          expect(chat_bot.valid?).to eq false
        end
      end
    end

    describe 'token' do
      context 'when present' do
        it 'is valid' do
          expect(chat_bot.valid?).to eq true
        end
      end

      context 'when nil' do
        let(:token) { nil }

        it 'is invalid' do
          expect(chat_bot.valid?).to eq false
        end
      end
    end

    describe 'platform' do
      context 'when present' do
        it 'is valid' do
          expect(chat_bot.valid?).to eq true
        end
      end

      context 'when nil' do
        let(:platform) { nil }

        it 'is invalid' do
          expect(chat_bot.valid?).to eq false
        end
      end
    end
  end
end
