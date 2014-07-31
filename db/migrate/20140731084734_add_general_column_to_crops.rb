class AddGeneralColumnToCrops < ActiveRecord::Migration
  def change
  	add_column :crops,:general,:integer
  end
end
