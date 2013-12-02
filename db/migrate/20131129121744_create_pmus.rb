class CreatePmus < ActiveRecord::Migration
  def change
    create_table :pmus do |t|
      t.string :produce
      t.string :variety
      t.string :location
      t.string :nearest_village
      t.string :address
      t.integer :plantation_year
      t.integer :number_of_trees
      t.integer :area
      t.integer :expected_production

      t.timestamps
    end
  end
end
