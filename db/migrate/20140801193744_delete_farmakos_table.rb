class DeleteFarmakosTable < ActiveRecord::Migration
  def change
  	drop_table :farmakos

  end
end

