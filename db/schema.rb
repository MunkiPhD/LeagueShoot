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

ActiveRecord::Schema.define(:version => 20120501175124) do

  create_table "divisions", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "match_data", :force => true do |t|
    t.string   "squad",           :null => false
    t.integer  "lineup_position", :null => false
    t.integer  "match_id",        :null => false
    t.integer  "shooter_id",      :null => false
    t.integer  "division_id",     :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "matches", :force => true do |t|
    t.string   "title",      :null => false
    t.date     "match_date", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shooters", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stage_scores", :force => true do |t|
    t.integer  "points_down", :default => 0, :null => false
    t.integer  "no_shoots",   :default => 0, :null => false
    t.integer  "procedurals", :default => 0, :null => false
    t.time     "shot_time",                  :null => false
    t.integer  "stage_id",                   :null => false
    t.integer  "shooter_id",                 :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "stages", :force => true do |t|
    t.integer  "number_of_targets", :default => 1,  :null => false
    t.integer  "match_id",                          :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "name",              :default => "", :null => false
  end

end
