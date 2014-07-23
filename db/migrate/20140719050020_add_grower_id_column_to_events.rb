class AddGrowerIdColumnToEvents < ActiveRecord::Migration
  def change
  	add_column :events,:grower_id,:integer
  end
end
