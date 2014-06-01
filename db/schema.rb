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

ActiveRecord::Schema.define(version: 20140601032844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "addresses", force: true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bids", force: true do |t|
    t.integer  "bidder_id"
    t.integer  "demo_id"
    t.text     "amendments"
    t.boolean  "accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demos", force: true do |t|
    t.integer  "contractor_id"
    t.integer  "client_id"
    t.integer  "facilitator_id"
    t.integer  "venue_id"
    t.datetime "drafted_at"
    t.datetime "contracted_at"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "submitted_at"
    t.datetime "rejected_at"
    t.datetime "accepted_at"
    t.datetime "payment_sent_at"
    t.datetime "payment_received_at"
    t.datetime "contractor_rated_at"
    t.datetime "client_rated_at"
    t.hstore   "contractor_rating"
    t.hstore   "client_rating"
    t.decimal  "hourly_rate"
    t.text     "terms"
    t.string   "aasm_state"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orgs", force: true do |t|
    t.string   "name"
    t.string   "tax_id"
    t.integer  "logo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orgs", ["name"], name: "index_orgs_on_name", using: :btree
  add_index "orgs", ["tax_id"], name: "index_orgs_on_tax_id", using: :btree

  create_table "positions", force: true do |t|
    t.integer  "user_id"
    t.integer  "org_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "tax_id"
    t.text     "bio"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["first_name", "last_name"], name: "index_users_on_first_name_and_last_name", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["tax_id"], name: "index_users_on_tax_id", using: :btree

end
