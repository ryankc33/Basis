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

ActiveRecord::Schema.define(version: 20140102090730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "car_insurance_quotes", force: true do |t|
    t.string   "car_registration_number"
    t.boolean  "car_modified"
    t.date     "car_purchase_date"
    t.boolean  "owner_and_keeper"
    t.string   "car_usage"
    t.integer  "annual_distance"
    t.string   "car_storage"
    t.integer  "total_cars_owned"
    t.string   "car_model"
    t.string   "applicant_first_name"
    t.string   "applicant_surname"
    t.string   "applicant_gender"
    t.date     "applicant_date_of_birth"
    t.string   "applicant_marital_status"
    t.integer  "applicant_children_under16"
    t.string   "applicant_occupation"
    t.string   "applicant_employer_type"
    t.string   "applicant_address"
    t.string   "applicant_postcode"
    t.text     "applicant_phone_number"
    t.boolean  "applicant_previous_claim"
    t.boolean  "applicant_motoring_offences"
    t.boolean  "applicant_convictions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_insurances", force: true do |t|
    t.string   "name"
    t.decimal  "premium_base"
    t.text     "description"
    t.text     "benefits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_insurances", force: true do |t|
    t.boolean  "reviewable"
    t.integer  "monthly_premium_base"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_insurances_vendors", id: false, force: true do |t|
    t.integer "life_insurance_id"
    t.integer "vendor_id"
  end

  add_index "life_insurances_vendors", ["life_insurance_id", "vendor_id"], name: "lifeinsurancevendor", using: :btree
  add_index "life_insurances_vendors", ["vendor_id"], name: "index_life_insurances_vendors_on_vendor_id", using: :btree

  create_table "lifequotes", force: true do |t|
    t.decimal  "cover_amount"
    t.string   "cover"
    t.string   "cover_type"
    t.string   "cover_duration"
    t.boolean  "joint_cover"
    t.boolean  "monthly_payment"
    t.string   "applicant_title"
    t.string   "applicant_firstname"
    t.string   "applicant_lastname"
    t.string   "email"
    t.date     "applicant_date_of_birth"
    t.text     "applicant_phone"
    t.boolean  "smoking"
    t.string   "joint_applicant_title"
    t.string   "joint_applicant_firstname"
    t.string   "joint_applicant_lastname"
    t.date     "joint_applicant_date_of_birth"
    t.boolean  "joint_applicant_smoking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vendors", force: true do |t|
    t.string   "email",                      default: "", null: false
    t.string   "encrypted_password",         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "primary_phone"
    t.string   "primary_website"
    t.string   "primary_contact_name"
    t.string   "primary_contact_position"
    t.string   "primary_contact_department"
    t.integer  "year_established"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "vendors", ["email"], name: "index_vendors_on_email", unique: true, using: :btree
  add_index "vendors", ["reset_password_token"], name: "index_vendors_on_reset_password_token", unique: true, using: :btree

end
