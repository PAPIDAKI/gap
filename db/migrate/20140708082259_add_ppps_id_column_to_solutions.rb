class AddPppsIdColumnToSolutions < ActiveRecord::Migration
  def change
  	add_column :solutions,:pps_id,:integer
  end
end
