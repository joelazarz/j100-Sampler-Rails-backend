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

ActiveRecord::Schema.define(version: 2019_09_18_201929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "crates", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kit_id"], name: "index_crates_on_kit_id"
    t.index ["user_id"], name: "index_crates_on_user_id"
  end

  create_table "digs", force: :cascade do |t|
    t.bigint "kit_id"
    t.bigint "user_id"
    t.string "name"
    t.integer "dig_pad_start"
    t.integer "dig_pad_end"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "kit_id"
    t.bigint "user_id"
    t.text "note"
    t.integer "note_pad_start"
    t.integer "not_pad_end"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "crates", "kits"
  add_foreign_key "crates", "users"
  add_foreign_key "digs", "kits"
  add_foreign_key "digs", "users"
  add_foreign_key "genres", "kits"
  add_foreign_key "notes", "kits"
  add_foreign_key "notes", "users"
end
