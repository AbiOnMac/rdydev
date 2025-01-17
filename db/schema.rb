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

ActiveRecord::Schema.define(version: 20231211053251) do

  create_table "students", force: :cascade do |t|
    t.string "first_name", limit: 255
    t.string "middle_name", limit: 255
    t.string "last_name", limit: 255
    t.string "email", limit: 255
    t.date "birth_date"
    t.string "gender", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "title_id", limit: 4
  end

  add_index "students", ["title_id"], name: "index_students_on_title_id", using: :btree

  create_table "titles", force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "students", "titles"
end
