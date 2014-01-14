class AddIdcolumnsToLines < ActiveRecord::Migration
  def change
  	add_column :lines, :pmu_id, :integer
  	add_column :lines, :sub_id, :integer
  end
end
