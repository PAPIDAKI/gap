class RemoveProduceColumnFromPmu < ActiveRecord::Migration
  def change
		remove_column :pmus ,:produce
  end
end
