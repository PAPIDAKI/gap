class ChangeColoumnTypesToLine < ActiveRecord::Migration
  def change
  	change_column :lines, :pmu_id,:integer
  	change_column :lines, :sub_id,:integer
  end
end
