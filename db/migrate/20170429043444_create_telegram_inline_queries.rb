class CreateTelegramInlineQueries < ActiveRecord::Migration[5.0]
  def change
    create_table :telegram_inline_queries do |t|
      t.string :inline_query_id, null: false, index: true
      t.references :from, null: false, index: true
      t.string :query, null: false
      t.string :offset, null: false

      t.timestamps
    end

    add_foreign_key :telegram_inline_queries, :telegram_users, column: :from_id
  end
end
