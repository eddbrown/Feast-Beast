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

ActiveRecord::Schema.define(version: 20150415154950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feasts", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "description"
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "yelp_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "twitter_id"
    t.integer  "instagram_id"
    t.string   "instagram_user"
    t.string   "icon"
    t.string   "category"
  end

  add_index "feasts", ["user_id"], name: "index_feasts_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "thoughts"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "feast_id"
    t.integer  "user_id"
  end

  add_index "reviews", ["feast_id"], name: "index_reviews_on_feast_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "yelps", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "yelps", ["email"], name: "index_yelps_on_email", unique: true, using: :btree
  add_index "yelps", ["reset_password_token"], name: "index_yelps_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "feasts", "users"
  add_foreign_key "reviews", "feasts"
  add_foreign_key "reviews", "users"
end
