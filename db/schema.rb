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

ActiveRecord::Schema.define(version: 20151229101826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "model_types", force: :cascade do |t|
    t.string   "name"
    t.string   "model_type_slug"
    t.string   "model_type_code"
    t.decimal  "base_price"
    t.integer  "model_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "model_types", ["model_id"], name: "index_model_types_on_model_id", using: :btree
  add_index "model_types", ["model_type_slug"], name: "index_model_types_on_model_type_slug", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.string   "model_slug"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "models", ["model_slug"], name: "index_models_on_model_slug", unique: true, using: :btree
  add_index "models", ["organization_id"], name: "index_models_on_organization_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "public_name"
    t.string   "organization_type"
    t.string   "pricing_policy"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_foreign_key "model_types", "models"
  add_foreign_key "models", "organizations"
end
