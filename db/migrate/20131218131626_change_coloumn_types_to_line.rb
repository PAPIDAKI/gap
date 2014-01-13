class ChangeColoumnTypesToLine < ActiveRecord::Migration
  def change
  	change_column :lines, :pmu_id,:integer,'integer USING CAST(pmu_id AS integer)'

  	change_column :lines, :sub_id,:integer,'integer USING CAST(sub_id AS integer)'
  end
end
