class ChangeColumTypesOfClitem < ActiveRecord::Migration
  def change
  	 	 change_column :clitems, :control_point, :text, :limit => nil
 	  	 change_column :clitems, :compliance_criteria, :text, :limit => nil

  end
end
