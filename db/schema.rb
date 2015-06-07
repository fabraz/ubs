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

ActiveRecord::Schema.define(version: 20150604025341) do
  create_table "addresses", force: :cascade do |t|
    t.string   "street",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "country_code", limit: 4
    t.integer  "district_id",  limit: 4
  end

  create_table "basic_units", force: :cascade do |t|
    t.float    "latitude",                limit: 24
    t.float    "longitude",               limit: 24
    t.integer  "city_id",                 limit: 7
    t.integer  "cnes_id",                 limit: 4
    t.string   "estab_name",              limit: 255
    t.integer  "address_id",              limit: 4
    t.integer  "district_id",             limit: 4
    t.string   "phone",                   limit: 255
    t.string   "physical_situation",      limit: 255
    t.string   "special_needs_situation", limit: 255
    t.string   "equips_situation",        limit: 255
    t.string   "meds_situation",          limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "basic_units", ["address_id"], name: "index_basic_units_on_address_id", using: :btree
  add_index "basic_units", ["city_id"], name: "index_basic_units_on_city_id", using: :btree
  add_index "basic_units", ["district_id"], name: "index_basic_units_on_district_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "district_name", limit: 255
    t.integer  "city_id",       limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "parses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "basic_units", "addresses"
  add_foreign_key "basic_units", "cities"
  add_foreign_key "basic_units", "districts"
end
