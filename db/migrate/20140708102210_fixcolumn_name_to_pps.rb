class FixcolumnNameToPps < ActiveRecord::Migration
  def change
  	  	remove_column :solutions,:pps_id,:integer
  	  	add_column :solutions,:pp_id,:integer


  end
end
