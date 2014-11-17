class RemoveForColumnFromClitems < ActiveRecord::Migration
  def change
    remove_column :clitems, :for, :string
  end
end
