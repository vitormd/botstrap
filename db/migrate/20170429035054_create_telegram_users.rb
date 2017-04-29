class CreateTelegramUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :telegram_users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :username

      t.timestamps
    end
  end
end
