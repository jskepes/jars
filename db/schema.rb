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

ActiveRecord::Schema.define(version: 20140907131616) do

  create_table "g_notes", force: true do |t|
    t.string   "cat1"
    t.string   "cat2"
    t.text     "g_note"
    t.date     "g_note_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plant_notes", force: true do |t|
    t.integer  "plant_id"
    t.text     "plant_note"
    t.date     "plant_note_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: true do |t|
    t.integer  "seed_id"
    t.integer  "plant_number"
    t.string   "plant_type"
    t.date     "date_wet"
    t.date     "date_root"
    t.date     "date_dirt"
    t.date     "date_grow"
    t.date     "date_1gal"
    t.date     "date_5gal"
    t.date     "date_12hr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seeds", force: true do |t|
    t.integer  "variety_id"
    t.string   "seed_number"
    t.integer  "harvest_days"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex"
  end

  create_table "varieties", force: true do |t|
    t.string   "name"
    t.string   "breeeder"
    t.integer  "mom_id"
    t.integer  "dad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "display_color"
  end

  create_table "variety_notes", force: true do |t|
    t.integer  "variety_id"
    t.text     "variety_note"
    t.date     "variety_note_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
