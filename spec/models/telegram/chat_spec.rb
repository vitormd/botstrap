require 'rails_helper'

RSpec.describe Telegram::Chat, type: :model do
  describe 'validations' do
    let(:type) { 'private' }
    subject(:telegram_chat) { build(:telegram_chat_private, type: type) }

    describe 'type' do
      context 'when present' do
        it 'is valid' do
          expect(telegram_chat.valid?).to eq true
        end
      end

      context 'when nil' do
        let(:type) { nil }

        it 'is invalid' do
          expect(telegram_chat.valid?).to eq false
        end
      end
    end
  end
end
