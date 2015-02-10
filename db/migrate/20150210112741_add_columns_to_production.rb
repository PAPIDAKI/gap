class AddColumnsToProduction < ActiveRecord::Migration
  def change
		add_column :productions ,:plantation_year,:integer
		add_column :productions ,:number_of_trees,:integer
		add_column :productions, :ehd,:date
		add_column :productions,:expected_quantity,:integer
  end
end
