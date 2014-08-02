class RenameColumnInFarmakos < ActiveRecord::Migration
  def change
  	rename_column :farmakos,:num_protok_otal,:num_protok_total
  end
end
