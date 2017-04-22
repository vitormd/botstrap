class CreateChatBots < ActiveRecord::Migration[5.0]
  def change
    create_table :chat_bots do |t|
      t.string  :name,     null: false, index: true
      t.integer :platform, null: false, index: true
      t.string  :token,    null: false, index: true

      t.timestamps
    end
  end
end
