class RemovePlantationYearNumberOfTreesExpectedProductionEhdColumnsFromPmu < ActiveRecord::Migration
  def change
		remove_column :pmus ,:plantation_year
		remove_column :pmus ,:number_of_trees
		remove_column :pmus, :expected_production
		remove_column :pmus, :ehd
  end
end
