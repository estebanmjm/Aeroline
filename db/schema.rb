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

ActiveRecord::Schema.define(version: 20160307221951) do

  create_table "airships", force: :cascade do |t|
    t.string   "ship_code"
    t.string   "ship_type"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities_routes", id: false, force: :cascade do |t|
    t.integer "city_id"
    t.integer "route_id"
  end

  add_index "cities_routes", ["city_id"], name: "index_cities_routes_on_city_id"
  add_index "cities_routes", ["route_id"], name: "index_cities_routes_on_route_id"

  create_table "pilots", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "code"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "origin"
    t.string   "destiny"
    t.integer  "code"
    t.float    "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "day"
    t.datetime "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
