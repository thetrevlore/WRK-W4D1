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

ActiveRecord::Schema.define(version: 20170522214915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artwork_shares", force: :cascade do |t|
    t.integer  "artwork_id", null: false
    t.integer  "viewer_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artwork_shares", ["artwork_id"], name: "index_artwork_shares_on_artwork_id", using: :btree
  add_index "artwork_shares", ["viewer_id"], name: "index_artwork_shares_on_viewer_id", using: :btree

  create_table "artworks", force: :cascade do |t|
    t.text     "title",      null: false
    t.text     "image_url",  null: false
    t.integer  "artist_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artworks", ["artist_id"], name: "index_artworks_on_artist_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name",  null: false
  end

  add_index "users", ["user_name"], name: "index_users_on_user_name", unique: true, using: :btree

end
