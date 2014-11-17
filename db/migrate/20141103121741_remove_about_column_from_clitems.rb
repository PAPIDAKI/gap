class RemoveAboutColumnFromClitems < ActiveRecord::Migration
  def change
    remove_column :clitems, :about, :string
  end
end
