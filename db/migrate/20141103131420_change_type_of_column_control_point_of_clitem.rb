class ChangeTypeOfColumnControlPointOfClitem < ActiveRecord::Migration
  def change
 	  	change_column :clitems, :control_point, :text, :limit => nil

  end
end
