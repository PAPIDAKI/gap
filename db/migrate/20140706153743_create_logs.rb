class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :pmu, index: true
      t.references :cultivation, index: true
      t.references :irrigation, index: true
      t.references :fertilization, index: true
      t.references :phyto_protection, index: true
      t.references :maintenance, index: true

      t.timestamps
    end
  end
end
