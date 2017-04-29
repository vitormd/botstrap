FactoryGirl.define do
  factory :telegram_user, class: Telegram::User do
    sequence :first_name { |n| "Fname#{n}" }
    sequence :last_name { |n| "Lname#{n}" }
    sequence :username { |n| "u_name_#{n}" }
  end
end
