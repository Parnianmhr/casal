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

ActiveRecord::Schema.define(version: 20170131113241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.decimal  "price"
    t.decimal  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "guest_id"
    t.index ["guest_id"], name: "index_bookings_on_guest_id", using: :btree
  end

  create_table "guests", force: :cascade do |t|
    t.string   "salutation"
    t.string   "first_name"
    t.string   "insertion"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "country"
    t.string   "street"
    t.string   "street_number"
    t.string   "zipcode"
    t.string   "city"
    t.string   "phone_number"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pages", force: :cascade do |t|
    t.text     "text_field1"
    t.text     "text_field2"
    t.text     "text_field3"
    t.text     "text_field4"
    t.text     "text_field5"
    t.text     "text_field6"
    t.text     "text_field7"
    t.string   "image_field1"
    t.string   "image_field2"
    t.string   "image_field3"
    t.string   "image_field4"
    t.string   "image_field5"
    t.string   "image_field6"
    t.string   "image_field7"
    t.string   "image_field8"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "bookings", "guests"
end
