FactoryGirl.define do
  factory :chat_bot do
    sequence :name do |n|
      "ChatBot#{n}"
    end
    sequence(:token)
    platform 0
  end
end
