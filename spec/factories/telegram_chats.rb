FactoryGirl.define do
  trait :private do
    type 'private'
    title "Chat's Title"
    sequence :first_name { |n| "Fname#{n}" }
    sequence :last_name { |n| "Lname#{n}" }
    sequence :username { |n| "u_name_#{n}" }
  end

  trait :group do
    type 'group'
    title "Group Chat's Title"
  end
  trait :all_admin_true { all_members_administrators true }
  trait :all_admin_false { all_members_administrators false }

  factory :telegram_chat_private,      class: Telegram::Chat, traits: [:private]
  factory :telegram_chat_group,        class: Telegram::Chat, traits: [:all_admin_false]
  factory :telegram_chat_group_admins, class: Telegram::Chat, traits: [:all_admin_true]
end
