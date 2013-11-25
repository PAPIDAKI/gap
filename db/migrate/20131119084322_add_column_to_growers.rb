class AddColumnToGrowers < ActiveRecord::Migration
  def change
    add_column :growers, :group_id, :integer
  end
end
