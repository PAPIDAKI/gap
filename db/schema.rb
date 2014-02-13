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

ActiveRecord::Schema.define(version: 20140211122442) do

  create_table "clitems", force: true do |t|
    t.string   "number"
    t.string   "module"
    t.string   "about"
    t.string   "for"
    t.string   "control_point"
    t.string   "compliance_criteria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilitations", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "facility_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facs", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "facility_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fertilizers", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "sub_id"
    t.date     "date"
    t.float    "quantity"
    t.string   "reasoning"
    t.string   "operator"
    t.string   "tech_advisor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ggcls", force: true do |t|
    t.string   "number"
    t.string   "module"
    t.string   "for"
    t.string   "about"
    t.string   "control_point"
    t.string   "compliance_criteria"
    t.string   "level"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_roles", force: true do |t|
    t.string   "title"
    t.text     "job_description"
    t.string   "reports_to"
    t.string   "supervisor_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mobile"
  end

  create_table "growers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "mobile"
    t.string   "ggn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "irrigations", force: true do |t|
    t.date     "date"
    t.float    "quantity"
    t.integer  "duration"
    t.string   "operator"
    t.integer  "pmu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "irrigations", ["pmu_id"], name: "index_irrigations_on_pmu_id"

  create_table "line_items", force: true do |t|
    t.string   "plant_protection_id"
    t.string   "fertilizer_id"
    t.string   "payment_id"
    t.datetime "date"
    t.decimal  "quantity_applied"
    t.string   "operator"
    t.string   "authorized_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pmu_id"
  end

  create_table "lines", force: true do |t|
    t.date     "date"
    t.float    "quantity"
    t.string   "reasoning"
    t.string   "operator"
    t.string   "tech_advisor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pmu_id"
    t.integer  "sub_id"
    t.integer  "phi"
  end

  create_table "payments", force: true do |t|
    t.decimal  "amount"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plant_protections", force: true do |t|
    t.string   "trade_name"
    t.string   "active_ingredient"
    t.integer  "phi"
    t.string   "justification"
    t.string   "application_method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pmus", force: true do |t|
    t.string   "produce"
    t.string   "variety"
    t.string   "location"
    t.string   "nearest_village"
    t.string   "address"
    t.integer  "plantation_year"
    t.integer  "number_of_trees"
    t.integer  "area"
    t.integer  "expected_production"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grower_id"
    t.float    "longitude"
    t.float    "latitude"
    t.date     "ehd"
    t.boolean  "ggcert"
  end

  create_table "pps", force: true do |t|
    t.string   "name"
    t.integer  "phi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.string   "j"
    t.text     "job_description"
    t.string   "reports_to"
    t.string   "superevisor_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subs", force: true do |t|
    t.string   "name"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
