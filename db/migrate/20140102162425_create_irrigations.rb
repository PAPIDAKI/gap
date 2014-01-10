class CreateIrrigations < ActiveRecord::Migration
  def change
    create_table :irrigations do |t|
      t.date :date
      t.float :quantity
      t.integer :duration
      t.string :operator
      t.references :pmu, index: true

      t.timestamps
    end
  end
end
