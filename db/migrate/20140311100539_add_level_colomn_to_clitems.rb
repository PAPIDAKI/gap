class AddLevelColomnToClitems < ActiveRecord::Migration
  def change
    add_column :clitems, :level, :string
  end
end
