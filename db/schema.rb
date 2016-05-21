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

ActiveRecord::Schema.define(version: 20160320172608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "dealership_id"
    t.integer  "model_id"
  end

  add_index "cars", ["dealership_id"], name: "index_cars_on_dealership_id", using: :btree
  add_index "cars", ["model_id"], name: "index_cars_on_model_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  create_table "dealerships", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "attachment"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["product_id"], name: "index_images_on_product_id", using: :btree

  create_table "makes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "make_id"
    t.integer  "category_id"
    t.string   "image"
    t.integer  "model_id"
  end

  add_index "models", ["category_id"], name: "index_models_on_category_id", using: :btree
  add_index "models", ["make_id"], name: "index_models_on_make_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price_in_cents"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "address"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_foreign_key "cars", "dealerships"
  add_foreign_key "cars", "models"
  add_foreign_key "images", "products"
  add_foreign_key "models", "categories"
  add_foreign_key "models", "makes"
  add_foreign_key "reviews", "products"
end
