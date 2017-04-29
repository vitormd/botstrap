require 'rails_helper'

RSpec.describe Telegram::User, type: :model do
  describe 'validations' do
    let(:first_name) { 'Vitor' }
    subject(:telegram_user) { build(:telegram_user, first_name: first_name) }

    describe 'first_name' do
      context 'when present' do
        it 'is valid' do
          expect(telegram_user.valid?).to eq true
        end
      end

      context 'when nil' do
        let(:first_name) { nil }

        it 'is invalid' do
          expect(telegram_user.valid?).to eq false
        end
      end
    end
  end
end
