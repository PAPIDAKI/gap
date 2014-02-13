class CreateClitems < ActiveRecord::Migration
  def change
    create_table :clitems do |t|
      t.string :number
      t.string :module
      t.string :area
      t.string :about
      t.string :for
      t.string :control_point
      t.string :compliance_criteria

      t.timestamps
    end
  end
end
