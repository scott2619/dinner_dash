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

ActiveRecord::Schema.define(version: 20140125064321) do

  create_table "cart_items", force: true do |t|
    t.integer "quantity"
    t.integer "cart_id"
  end

  add_index "cart_items", ["cart_id"], name: "index_cart_items_on_cart_id"

  create_table "carts", force: true do |t|
    t.string  "status"
    t.integer "user_id"
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id"

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "items", force: true do |t|
    t.string  "title"
    t.text    "description"
    t.integer "price"
    t.string  "photo"
    t.integer "category_id"
    t.integer "cart_item_id"
  end

  add_index "items", ["cart_item_id"], name: "index_items_on_cart_item_id"
  add_index "items", ["category_id"], name: "index_items_on_category_id"

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_address"
    t.string   "full_name"
    t.string   "display_name"
  end

  add_index "users", ["email_address"], name: "index_users_on_email_address", unique: true

end
