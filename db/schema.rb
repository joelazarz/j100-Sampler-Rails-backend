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

ActiveRecord::Schema.define(version: 2019_09_30_184113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crates", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["kit_id"], name: "index_crates_on_kit_id"
    t.index ["user_id"], name: "index_crates_on_user_id"
  end

  create_table "digs", force: :cascade do |t|
    t.bigint "kit_id"
    t.bigint "user_id"
    t.string "name"
    t.float "dig_pad_start"
    t.float "dig_pad_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kit_id"], name: "index_digs_on_kit_id"
    t.index ["user_id"], name: "index_digs_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.bigint "kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kit_id"], name: "index_genres_on_kit_id"
  end

  create_table "kits", force: :cascade do |t|
    t.string "name"
    t.text "detail"
    t.string "sample"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "kit_id"
    t.bigint "user_id"
    t.text "note"
    t.float "note_pad_start"
    t.float "note_pad_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kit_id"], name: "index_notes_on_kit_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "location"
    t.string "website"
    t.text "bio"
    t.boolean "darkmode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "crates", "kits"
  add_foreign_key "crates", "users"
  add_foreign_key "digs", "kits"
  add_foreign_key "digs", "users"
  add_foreign_key "genres", "kits"
  add_foreign_key "notes", "kits"
  add_foreign_key "notes", "users"
end
