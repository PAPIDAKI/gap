class DeleteFertilizerGroupRoleTenantTenants < ActiveRecord::Migration
 def up
  	#drop_table :fertilizers 
  	#drop_table :fertilizations
  	#drop_table :line_items
  	
  	#drop_table :operations
  	#drop_table :actions

 end


 def down
  	create_table "fertilizations", force: true do |t|
    t.string   "brand_name"
    t.string   "approved_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "action_id"
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

  create_table "logentries", force: true do |t|
    t.integer  "pmu_id"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    end

  add_index "logentries", ["action_id"], name: "index_logentries_on_action_id"
  add_index "logentries", ["pmu_id"], name: "index_logentries_on_pmu_id"

 

  create_table "operations", force: true do |t|
    t.integer  "pmu_id_id"
    t.integer  "logentry_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    end

  add_index "operations", ["logentry_id_id"], name: "index_operations_on_logentry_id_id"
  add_index "operations", ["pmu_id_id"], name: "index_operations_on_pmu_id_id"

  create_table "actions", force: true do |t|
    t.date     "date"
    t.string   "operator"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    end
 end

end

