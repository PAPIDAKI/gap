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

ActiveRecord::Schema.define(version: 20150210112741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "applications", force: true do |t|
    t.integer  "event_id"
    t.integer  "solution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applications", ["event_id"], name: "index_applications_on_event_id", using: :btree
  add_index "applications", ["solution_id"], name: "index_applications_on_solution_id", using: :btree

  create_table "asthenia", force: true do |t|
    t.string   "code_asten"
    t.string   "astenia"
    t.string   "nastenia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certifications", force: true do |t|
    t.integer  "standard_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "production_id"
  end

  add_index "certifications", ["production_id"], name: "index_certifications_on_production_id", using: :btree

  create_table "clitems", force: true do |t|
    t.string   "number"
    t.text     "control_point"
    t.text     "compliance_criteria"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level"
  end

  create_table "crops", force: true do |t|
    t.string   "kathg"
    t.string   "eidos"
    t.string   "gonoma"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "general"
  end

  create_table "cultivations", force: true do |t|
    t.date     "date"
    t.text     "note"
    t.string   "operator"
    t.integer  "workers_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "droncrops", force: true do |t|
    t.string   "kodikos"
    t.integer  "crop_id"
    t.string   "crops"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "epembashes", force: true do |t|
    t.integer  "farmako_id"
    t.integer  "crop_id"
    t.string   "diast_pros"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "epembashes", ["farmako_id"], name: "index_epembashes_on_farmako_id", using: :btree

  create_table "eventizations", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "eventizations", ["event_id"], name: "index_eventizations_on_event_id", using: :btree
  add_index "eventizations", ["pmu_id"], name: "index_eventizations_on_pmu_id", using: :btree

  create_table "events", force: true do |t|
    t.date     "date"
    t.text     "note"
    t.string   "operator"
    t.hstore   "fields"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "grower_id"
    t.integer  "person"
  end

  add_index "events", ["fields"], name: "index_events_on_fields", using: :gin

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

  create_table "farmakos", force: true do |t|
    t.string   "gbonoma"
    t.string   "emporikhon"
    t.date     "hmer_egris"
    t.date     "telos_egri"
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
    t.integer  "pmu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "irrigations", ["pmu_id"], name: "index_irrigations_on_pmu_id", using: :btree

  create_table "logentries", force: true do |t|
    t.date     "date"
    t.text     "note"
    t.string   "operator"
    t.integer  "workers"
    t.integer  "pmu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "logentry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["logentry_id"], name: "index_logs_on_logentry_id", using: :btree
  add_index "logs", ["pmu_id"], name: "index_logs_on_pmu_id", using: :btree

  create_table "maintenances", force: true do |t|
    t.date     "date"
    t.text     "note"
    t.string   "operator"
    t.integer  "workers_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pmus", force: true do |t|
    t.string   "location"
    t.string   "nearest_village"
    t.string   "address"
    t.integer  "area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grower_id"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "pmus_certifications", id: false, force: true do |t|
    t.integer "pmus_id"
    t.integer "certifications_id"
  end

  add_index "pmus_certifications", ["certifications_id"], name: "index_pmus_certifications_on_certifications_id", using: :btree
  add_index "pmus_certifications", ["pmus_id"], name: "index_pmus_certifications_on_pmus_id", using: :btree

  create_table "pmus_produces", id: false, force: true do |t|
    t.integer "pmu_id"
    t.integer "produce_id"
  end

  add_index "pmus_produces", ["pmu_id"], name: "index_pmus_produces_on_pmu_id", using: :btree
  add_index "pmus_produces", ["produce_id"], name: "index_pmus_produces_on_produce_id", using: :btree

  create_table "pps", force: true do |t|
    t.string   "quantity"
    t.integer  "logentry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pps", ["logentry_id"], name: "index_pps_on_logentry_id", using: :btree

  create_table "procedures", force: true do |t|
    t.string   "title"
    t.string   "result"
    t.string   "accountable"
    t.integer  "clitem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "procedures", ["clitem_id"], name: "index_procedures_on_clitem_id", using: :btree

  create_table "produces", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productions", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "produce_id"
    t.string   "variety"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plantation_year"
    t.integer  "number_of_trees"
    t.date     "ehd"
    t.integer  "expected_quantity"
  end

  create_table "projects", force: true do |t|
    t.string   "produce"
    t.string   "option"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solutions", force: true do |t|
    t.string   "brand"
    t.string   "active"
    t.string   "reason"
    t.integer  "phi"
    t.string   "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standards", force: true do |t|
    t.string   "name"
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

  add_index "steps", ["procedure_id"], name: "index_steps_on_procedure_id", using: :btree

  create_table "subs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systatiks", id: false, force: true do |t|
    t.string   "kodikos",    null: false
    t.string   "onomadron"
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
