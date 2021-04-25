# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_25_172126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "churches", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "message_favorites", force: :cascade do |t|
    t.bigint "message_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_id"], name: "index_message_favorites_on_message_id"
    t.index ["user_id"], name: "index_message_favorites_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.string "caption"
    t.text "content_html"
    t.text "content_text"
    t.boolean "published", default: false
    t.datetime "published_at"
    t.bigint "church_id", null: false
    t.bigint "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_messages_on_author_id"
    t.index ["church_id"], name: "index_messages_on_church_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "cover"
    t.string "title"
    t.string "caption"
    t.string "content_html"
    t.string "content_text"
    t.boolean "published", default: false
    t.datetime "published_at"
    t.bigint "church_id", null: false
    t.bigint "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_news_on_author_id"
    t.index ["church_id"], name: "index_news_on_church_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "church_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.index ["church_id"], name: "index_profiles_on_church_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "taggable_id"
    t.string "taggable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_hash"
    t.boolean "account_confirmed", default: false
    t.bigint "church_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "confirmation_token"
    t.string "password_recover_token"
    t.index ["church_id"], name: "index_users_on_church_id"
  end

  add_foreign_key "message_favorites", "messages"
  add_foreign_key "message_favorites", "users"
  add_foreign_key "messages", "churches"
  add_foreign_key "news", "churches"
  add_foreign_key "profiles", "churches"
  add_foreign_key "profiles", "users"
  add_foreign_key "users", "churches"
end
