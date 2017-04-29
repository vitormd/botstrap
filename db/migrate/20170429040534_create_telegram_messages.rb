class CreateTelegramMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :telegram_messages do |t|
      t.integer    :message_id, null: false, index: true
      t.integer    :date, null: false
      t.references :from, index: true
      t.references :chat, null: false, index: true
      t.string     :text, limit: 4096

      t.timestamps
    end

    add_foreign_key :telegram_messages, :telegram_users, column: :from_id
    add_foreign_key :telegram_messages, :telegram_chats, column: :chat_id
  end
end
