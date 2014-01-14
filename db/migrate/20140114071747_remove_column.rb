class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :lines ,:pmu_id
  	remove_column :lines ,:sub_id
  end
end
