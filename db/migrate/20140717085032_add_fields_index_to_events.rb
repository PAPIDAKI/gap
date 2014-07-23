class AddFieldsIndexToEvents < ActiveRecord::Migration
  def change
  	add_index :events,:fields,using:'gin'
  end
end
