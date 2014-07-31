class AddPersonColumnToEvents < ActiveRecord::Migration
  def change
  	add_column :events,:person,:integer
  end
end
