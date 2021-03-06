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

ActiveRecord::Schema.define(version: 2019_08_26_122236) do

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.datetime "event_datetime"
    t.string "presentation_name1"
    t.string "presentation_name2"
    t.string "presentation_name3"
    t.string "presentation_name4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presentations", force: :cascade do |t|
    t.string "presentation_name"
    t.text "description"
    t.integer "likes"
    t.string "display_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Event_id"
    t.string "link_url"
    t.index ["Event_id"], name: "index_presentations_on_Event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "display_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
