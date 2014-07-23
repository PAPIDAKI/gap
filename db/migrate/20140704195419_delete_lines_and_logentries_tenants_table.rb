class DeleteLinesAndLogentriesTenantsTable < ActiveRecord::Migration
  def change
  	drop_table :lines
  	#drop_table :logentries
  	drop_table :tenants

  end
end
