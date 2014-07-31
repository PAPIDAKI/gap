class RenameColumnsOfSolutions < ActiveRecord::Migration
  def change
  	rename_column :solutions,:active_ingredient,:active
  	rename_column :solutions,:application_for,:reason
  	rename_column :solutions,:recomended_dosage,:quantity
  	remove_column :solutions ,:pp_id
  end
end
