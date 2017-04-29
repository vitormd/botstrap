# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170429040534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chat_bots", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "platform",   null: false
    t.string   "token",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_chat_bots_on_name", using: :btree
    t.index ["platform"], name: "index_chat_bots_on_platform", using: :btree
    t.index ["token"], name: "index_chat_bots_on_token", using: :btree
  end

  create_table "telegram_chats", force: :cascade do |t|
    t.string   "type",                      null: false
    t.string   "title"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "all_member_administrators"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "telegram_messages", force: :cascade do |t|
    t.integer  "message_id",              null: false
    t.integer  "date",                    null: false
    t.integer  "from_id"
    t.integer  "chat_id",                 null: false
    t.string   "text",       limit: 4096
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["chat_id"], name: "index_telegram_messages_on_chat_id", using: :btree
    t.index ["from_id"], name: "index_telegram_messages_on_from_id", using: :btree
    t.index ["message_id"], name: "index_telegram_messages_on_message_id", using: :btree
  end

  create_table "telegram_users", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name"
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "telegram_messages", "telegram_chats", column: "chat_id"
  add_foreign_key "telegram_messages", "telegram_users", column: "from_id"
end
