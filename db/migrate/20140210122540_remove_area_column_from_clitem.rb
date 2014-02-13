class RemoveAreaColumnFromClitem < ActiveRecord::Migration
  def change
  	remove_column :clitems,:area,:string
  end
end
