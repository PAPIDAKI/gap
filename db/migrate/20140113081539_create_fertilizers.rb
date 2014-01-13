class CreateFertilizers < ActiveRecord::Migration
  def change
    create_table :fertilizers do |t|
      t.integer :pmu_id
      t.integer :sub_id
      t.date :date
      t.float :quantity
      t.string :reasoning
      t.string :operator
      t.string :tech_advisor

      t.timestamps
    end
  end
end
