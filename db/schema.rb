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

ActiveRecord::Schema.define(version: 2019_08_17_162634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "status"
    t.string "category"
    t.string "collection_author"
    t.string "collection_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.text "body"
    t.string "status"
    t.string "flag"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "connects", force: :cascade do |t|
    t.string "user"
    t.integer "collection_id"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dreamcars", force: :cascade do |t|
    t.string "user"
    t.integer "year"
    t.string "trim"
    t.string "exterior_color"
    t.string "interior_color"
    t.string "engine"
    t.string "transmisson"
    t.decimal "price"
    t.string "extra_column"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "comment_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_likes_on_comment_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "make"
    t.string "model"
    t.string "trim"
    t.integer "mileage"
    t.string "vin"
    t.string "condition"
    t.string "exterior_color"
    t.string "interior_color"
    t.string "engine"
    t.string "transmission"
    t.string "original_listing_service"
    t.string "listing_url"
    t.string "description"
    t.decimal "price"
    t.string "listing_author"
    t.string "status"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "role"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "likes", "comments"
  add_foreign_key "likes", "users"
end
