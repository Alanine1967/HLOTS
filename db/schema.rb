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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120927233940) do

  create_table "episodes", :force => true do |t|
    t.integer  "number"
    t.text     "title"
    t.date     "first_shown"
    t.string   "brief_desc"
    t.integer  "season_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "episodes", ["season_id"], :name => "index_episodes_on_season_id"

  create_table "individuals", :force => true do |t|
    t.string   "role"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "surname"
    t.text     "biography"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "cast"
  end

  add_index "individuals", ["role"], :name => "index_individuals_on_role"
  add_index "individuals", ["surname"], :name => "index_individuals_on_surname"

  create_table "participations", :force => true do |t|
    t.integer  "individual_id"
    t.integer  "episode_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "participations", ["episode_id"], :name => "index_participations_on_episode_id"
  add_index "participations", ["individual_id"], :name => "index_participations_on_individual_id"

  create_table "seasons", :force => true do |t|
    t.integer  "number"
    t.date     "first_shown"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
