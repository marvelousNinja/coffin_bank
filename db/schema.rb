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

ActiveRecord::Schema.define(version: 20140107194311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.decimal  "balance",    default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "additional_agreement_documents", force: true do |t|
    t.integer  "additional_agreement_id", null: false
    t.string   "file",                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_agreement_documents", ["additional_agreement_id"], name: "index_additional_agreement_documents_on_additional_agreement_id", using: :btree

  create_table "additional_agreements", force: true do |t|
    t.integer  "contract_id", null: false
    t.date     "start_date",  null: false
    t.date     "end_date",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_agreements", ["contract_id"], name: "index_additional_agreements_on_contract_id", using: :btree

  create_table "contract_documents", force: true do |t|
    t.integer  "contract_id", null: false
    t.string   "file",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contract_documents", ["contract_id"], name: "index_contract_documents_on_contract_id", using: :btree

  create_table "contracts", force: true do |t|
    t.integer  "order_id",   null: false
    t.date     "start_date", null: false
    t.date     "end_date",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contracts", ["order_id"], name: "index_contracts_on_order_id", using: :btree

  create_table "credit_products", force: true do |t|
    t.integer  "percent",    null: false
    t.decimal  "min_sum",    null: false
    t.decimal  "max_sum",    null: false
    t.integer  "min_length", null: false
    t.integer  "max_length", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operations", force: true do |t|
    t.integer  "debit_account_id",                null: false
    t.integer  "credit_account_id",               null: false
    t.decimal  "sum",               default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "operations", ["credit_account_id"], name: "index_operations_on_credit_account_id", using: :btree
  add_index "operations", ["debit_account_id"], name: "index_operations_on_debit_account_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "user_id",                           null: false
    t.integer  "credit_product_id",                 null: false
    t.decimal  "sum",               default: 0.0,   null: false
    t.boolean  "is_checked",        default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["credit_product_id"], name: "index_orders_on_credit_product_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "plan_pays", force: true do |t|
    t.date     "pay_day",         null: false
    t.decimal  "sum",             null: false
    t.boolean  "is_extinguished", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plan_pays", ["is_extinguished"], name: "index_plan_pays_on_is_extinguished", using: :btree
  add_index "plan_pays", ["pay_day"], name: "index_plan_pays_on_pay_day", using: :btree

  create_table "profiles", force: true do |t|
    t.string   "first_name",      null: false
    t.string   "middle_name",     null: false
    t.string   "last_name",       null: false
    t.string   "passport_series", null: false
    t.string   "passport_number", null: false
    t.string   "phone_number",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,        null: false
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   default: "client", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
