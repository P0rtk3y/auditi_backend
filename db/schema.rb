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

ActiveRecord::Schema.define(version: 2020_04_29_081619) do

  create_table "audiocards", force: :cascade do |t|
    t.integer "user_id"
    t.string "category"
    t.text "tags"
    t.string "soundfile"
    t.string "soundster"
    t.string "image"
    t.string "mood"
    t.boolean "privatecard"
    t.boolean "favorite"
    t.datetime "created_at", null: false
    t.string "soundfile_file_name"
    t.string "soundfile_content_type"
    t.integer "soundfile_file_size"
    t.datetime "soundfile_updated_at"
    t.index ["user_id"], name: "index_audiocards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
  end

end
