class AddColumnsToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :mobile, :string
  end
end
