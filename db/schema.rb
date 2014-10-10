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

ActiveRecord::Schema.define(version: 20141009072344) do

  create_table "categories", force: true do |t|
    t.string   "code"
    t.string   "catname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", force: true do |t|
    t.string   "issuedto"
    t.string   "nos"
    t.boolean  "return"
    t.string   "cat_id"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "issues", ["cat_id"], name: "index_issues_on_cat_id", using: :btree
  add_index "issues", ["user_id"], name: "index_issues_on_user_id", using: :btree

  create_table "items", force: true do |t|
    t.string   "cat_id"
    t.string   "itemname"
    t.string   "nos"
    t.boolean  "return"
    t.boolean  "stock"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["cat_id"], name: "index_items_on_cat_id", using: :btree
  add_index "items", ["itemname"], name: "index_items_on_itemname", using: :btree
  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "todos", force: true do |t|
    t.integer  "user_id"
    t.string   "todoname"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "todos", ["user_id"], name: "index_todos_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.boolean  "active"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
