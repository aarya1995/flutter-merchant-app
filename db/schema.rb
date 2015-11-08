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

ActiveRecord::Schema.define(version: 20151108211412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "bookable_activities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_activities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchant_applications", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "description"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "status"
  end

  create_table "merchants", force: true do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "business_name"
    t.string   "category"
    t.string   "description"
    t.string   "address"
  end

  add_index "merchants", ["email"], name: "index_merchants_on_email", unique: true, using: :btree
  add_index "merchants", ["reset_password_token"], name: "index_merchants_on_reset_password_token", unique: true, using: :btree

  create_table "offering_images", force: true do |t|
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "offering_id"
  end

  add_index "offering_images", ["offering_id"], name: "index_offering_images_on_offering_id", using: :btree

  create_table "offerings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "description"
    t.string   "activity_type"
    t.string   "activity_topic"
    t.text     "interests"
    t.text     "outing_purpose"
    t.text     "moods"
    t.integer  "quantity"
    t.text     "terms"
    t.integer  "price"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "venue_name"
    t.string   "frequency"
    t.text     "start_time"
    t.text     "end_time"
    t.text     "days"
    t.string   "repeat_monthly"
    t.text     "booking_close"
    t.text     "booking_start"
    t.text     "slots"
    t.string   "status"
    t.string   "type"
    t.string   "website"
    t.string   "facebook"
    t.string   "yelp"
    t.string   "twitter"
    t.string   "instagram"
    t.integer  "merchant_id"
    t.string   "voucher_name"
    t.string   "voucher_description"
    t.string   "is_offering_complete"
  end

  add_index "offerings", ["merchant_id"], name: "index_offerings_on_merchant_id", using: :btree

end
