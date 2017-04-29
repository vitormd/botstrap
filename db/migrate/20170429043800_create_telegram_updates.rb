class CreateTelegramUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :telegram_updates do |t|
      t.integer :update_id, null: false, index: true
      t.references :message
      t.references :inline_query

      t.timestamps
    end

    add_foreign_key :telegram_updates, :telegram_messages, column: :message_id
    add_foreign_key :telegram_updates, :telegram_inline_queries, column: :inline_query_id
  end
end
