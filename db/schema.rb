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

ActiveRecord::Schema.define(version: 20190803020454) do

  create_table "attendances", force: :cascade do |t|
    t.string   "event_date_id",         limit: 10, null: false
    t.string   "event_date_comment_id", limit: 10
    t.string   "participant_id",        limit: 10, null: false
    t.integer  "attendance",            limit: 1,  null: false
    t.boolean  "delete_flg",            limit: 1
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "event_date_comments", force: :cascade do |t|
    t.string   "event_date_id",      limit: 10, null: false
    t.string   "event_date_comment", limit: 20, null: false
    t.boolean  "delete_flg",         limit: 1
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "event_dates", force: :cascade do |t|
    t.string   "event_id",   limit: 10, null: false
    t.string   "event_date", limit: 8,  null: false
    t.boolean  "delete_flg", limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name",    limit: 30,  null: false
    t.string   "event_content", limit: 200
    t.boolean  "delete_flg",    limit: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "participant", limit: 10, null: false
    t.boolean  "delete_flg",  limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
