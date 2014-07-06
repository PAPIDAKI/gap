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

ActiveRecord::Schema.define(version: 20140706143951) do

  create_table "activities", force: true do |t|
    t.date     "date"
    t.text     "note"
    t.string   "operator"
    t.integer  "num_workers"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clitems", force: true do |t|
    t.string   "number"
    t.string   "module"
    t.string   "about"
    t.string   "for"
    t.string   "control_point"
    t.string   "compliance_criteria"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level"
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
    t.integer  "user_id"
    t.integer  "tenant_id"
  end

  add_index "groups", ["tenant_id"], name: "index_groups_on_tenant_id"

  create_table "growers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "mobile"
    t.string   "ggn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "instructions", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "irrigations", force: true do |t|
    t.date     "date"
    t.float    "quantity"
    t.integer  "duration"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "action_id"
  end

  create_table "logs", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["activity_id"], name: "index_logs_on_activity_id"
  add_index "logs", ["pmu_id"], name: "index_logs_on_pmu_id"

  create_table "lots", force: true do |t|
    t.integer  "lot"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pmu_id"
  end

  add_index "lots", ["pmu_id"], name: "index_lots_on_pmu_id"

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

  create_table "procedures", force: true do |t|
    t.string   "title"
    t.string   "result"
    t.string   "accountable"
    t.integer  "clitem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "procedures", ["clitem_id"], name: "index_procedures_on_clitem_id"

  create_table "ratings", force: true do |t|
    t.integer  "lot_id"
    t.integer  "user_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["lot_id"], name: "index_ratings_on_lot_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "roles", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "step_accountable"
    t.integer  "procedure_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "steps", ["procedure_id"], name: "index_steps_on_procedure_id"

  create_table "subs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true

  create_table "tags", force: true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

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
