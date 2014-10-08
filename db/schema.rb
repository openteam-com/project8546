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

ActiveRecord::Schema.define(version: 20141007074232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.string   "title"
    t.date     "when"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participants", force: true do |t|
    t.string   "performer"
    t.string   "nomination"
    t.string   "auditory"
    t.integer  "age"
    t.string   "address_index"
    t.string   "address_area"
    t.string   "address_district"
    t.string   "address_city"
    t.string   "address_street"
    t.string   "address_building"
    t.string   "address_housing"
    t.string   "address_flat"
    t.string   "phone"
    t.string   "email"
    t.string   "performance_name"
    t.string   "music"
    t.boolean  "accept_terms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_items", force: true do |t|
    t.string   "item_type"
    t.integer  "item_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
