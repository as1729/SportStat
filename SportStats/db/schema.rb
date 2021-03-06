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

ActiveRecord::Schema.define(:version => 20150615231220) do

  create_table "games", :force => true do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "home_team_points"
    t.integer  "away_team_points"
    t.integer  "venue_id"
    t.datetime "date_time"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "games", ["venue_id"], :name => "index_games_on_venue_id"

  create_table "humen", :force => true do |t|
    t.string   "name"
    t.date     "dob"
    t.integer  "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.integer  "human_id"
    t.integer  "team_id"
    t.date     "join_date"
    t.date     "depart_date"
    t.text     "reason_for_departure"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "players", ["human_id"], :name => "index_players_on_human_id"
  add_index "players", ["team_id"], :name => "index_players_on_team_id"

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "number_of_teams"
    t.integer  "min_age"
    t.string   "gender"
    t.integer  "min_players_per_team"
    t.integer  "max_players_per_team"
    t.integer  "league_id"
    t.integer  "sport_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "seasons", ["league_id"], :name => "index_seasons_on_league_id"
  add_index "seasons", ["sport_id"], :name => "index_seasons_on_sport_id"

  create_table "sports", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "season_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teams", ["season_id"], :name => "index_teams_on_season_id"

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

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
