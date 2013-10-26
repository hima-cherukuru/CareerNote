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

ActiveRecord::Schema.define(version: 20131026095706) do

  create_table "achievements", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "achievement_date"
    t.integer  "user_id"
    t.integer  "position_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "achievements", ["category_id"], name: "index_achievements_on_category_id"
  add_index "achievements", ["position_id"], name: "index_achievements_on_position_id"
  add_index "achievements", ["user_id"], name: "index_achievements_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenges", force: true do |t|
    t.text     "context"
    t.text     "solution"
    t.text     "lesson"
    t.string   "headline"
    t.integer  "position_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenges", ["position_id"], name: "index_challenges_on_position_id"
  add_index "challenges", ["user_id"], name: "index_challenges_on_user_id"

  create_table "connections", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "job_title"
    t.string   "company"
    t.string   "linked_in"
    t.integer  "user_id"
    t.integer  "achievement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "connections", ["achievement_id"], name: "index_connections_on_achievement_id"
  add_index "connections", ["user_id"], name: "index_connections_on_user_id"

  create_table "goals", force: true do |t|
    t.string   "title"
    t.date     "target_date"
    t.text     "description"
    t.boolean  "completed"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "goals", ["user_id"], name: "index_goals_on_user_id"

  create_table "interviews", force: true do |t|
    t.text     "question"
    t.text     "answer"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interviews", ["user_id"], name: "index_interviews_on_user_id"

  create_table "kudos", force: true do |t|
    t.text     "content"
    t.integer  "connection_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kudos", ["connection_id"], name: "index_kudos_on_connection_id"
  add_index "kudos", ["user_id"], name: "index_kudos_on_user_id"

  create_table "positions", force: true do |t|
    t.string   "job_title"
    t.string   "company"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "current"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions", ["user_id"], name: "index_positions_on_user_id"

  create_table "profiles", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "linkedin"
    t.string   "user_name"
    t.datetime "last_login"
    t.integer  "user_id"
    t.integer  "reminder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "reminders", force: true do |t|
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
