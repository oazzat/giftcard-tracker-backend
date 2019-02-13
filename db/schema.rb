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

ActiveRecord::Schema.define(version: 2019_02_13_215304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "giftcards", force: :cascade do |t|
    t.datetime "exp_date"
    t.string "barcode"
    t.string "passcode"
    t.float "balance"
    t.integer "user_id"
    t.datetime "date_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "listed"
    t.integer "store_id"
    t.boolean "hasExpired"
  end

  create_table "listings", force: :cascade do |t|
    t.float "price"
    t.integer "giftcard_id"
    t.integer "user_id"
    t.datetime "date_sold"
    t.datetime "date_posted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prev_user"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "balance"
  end

end
