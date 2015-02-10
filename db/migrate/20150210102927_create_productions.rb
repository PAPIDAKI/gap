class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :pmu_id
      t.integer :produce_id
      t.string :variety

      t.timestamps
    end
  end
end
