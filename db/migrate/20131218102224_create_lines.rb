class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :pmu_id
      t.string :sub_id
      t.date :date
      t.float :quantity
      t.string :reasoning
      t.string :operator
      t.string :tech_advisor

      t.timestamps
    end
  end
end
