class DropFacilitations < ActiveRecord::Migration
  def change
  	drop_table :facilitations 
  end
end
