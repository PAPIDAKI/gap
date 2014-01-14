class ChangeColoumnTypesToLine < ActiveRecord::Migration
  def change
  	change_column :lines, :pmu_id,"integer USING CAST (column_name AS integer)"

  	change_column :lines, :sub_id,"integer USING CAST(column_name AS integer)"
  end
end
