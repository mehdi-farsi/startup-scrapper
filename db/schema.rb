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

ActiveRecord::Schema.define(version: 20151212070122) do

  create_table "founders", force: :cascade do |t|
    t.string   "name"
    t.string   "job_title"
    t.string   "picture"
    t.integer  "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "founders", ["startup_id"], name: "index_founders_on_startup_id"

  create_table "social_networks", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.integer  "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "social_networks", ["startup_id"], name: "index_social_networks_on_startup_id"

  create_table "startups", force: :cascade do |t|
    t.string   "public_name"
    t.string   "description"
    t.string   "logo"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "done",          default: false
    t.boolean  "uninteresting", default: false
  end

end
