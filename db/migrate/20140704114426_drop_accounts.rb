class DropAccounts < ActiveRecord::Migration
  def up
  	drop_table :accounts
  end

  def down
	  	create_table "accounts", force: true do |t|
	    t.string   "name"
	    t.string   "subdomain"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	  end
  end
end

