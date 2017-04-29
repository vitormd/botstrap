class CreateTelegramChats < ActiveRecord::Migration[5.0]
  def change
    create_table :telegram_chats do |t|
      t.string :type, null: false
      t.string :title
      t.string :username
      t.string :first_name
      t.string :last_name
      t.boolean :all_member_administrators

      t.timestamps
    end
  end
end
