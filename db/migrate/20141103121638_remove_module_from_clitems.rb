class RemoveModuleFromClitems < ActiveRecord::Migration
  def change
    remove_column :clitems, :module, :string
  end
end
