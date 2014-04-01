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

ActiveRecord::Schema.define(version: 20140401210103) do

  create_table "cart_entries", force: true do |t|
    t.integer  "count"
    t.datetime "removed_at"
    t.integer  "cart_id"
    t.integer  "dimension_id"
    t.integer  "sign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cart_entries", ["cart_id"], name: "index_cart_entries_on_cart_id"
  add_index "cart_entries", ["dimension_id"], name: "index_cart_entries_on_dimension_id"
  add_index "cart_entries", ["sign_id"], name: "index_cart_entries_on_sign_id"

  create_table "carts", force: true do |t|
    t.datetime "submitted_at"
    t.datetime "processed_at"
    t.string   "permalink"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dimensions", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dimensions_shapes", id: false, force: true do |t|
    t.integer "shape_id",     null: false
    t.integer "dimension_id", null: false
  end

  create_table "shapes", force: true do |t|
    t.string   "name"
    t.text     "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "shape_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "signs", ["category_id"], name: "index_signs_on_category_id"
  add_index "signs", ["shape_id"], name: "index_signs_on_shape_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
