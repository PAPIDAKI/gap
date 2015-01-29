class RenameTypeColumnToOptionInProjects < ActiveRecord::Migration
  def change
    rename_column :projects,:type,:option
  end
end
