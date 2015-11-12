# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150907221236) do

  create_table "characters", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "fandom_id"
  end

  create_table "fandoms", force: :cascade do |t|
    t.text     "name"
    t.text     "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fanfics", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.text     "rating"
    t.string   "fandoms",     limit: 255
    t.text     "characters"
    t.text     "ships"
    t.text     "friendships"
    t.boolean  "completed"
    t.integer  "chapters"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "profilepic",      limit: 255
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "description"
    t.boolean  "complete",    default: false
    t.string   "rating"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "fandom_id"
  end

end
