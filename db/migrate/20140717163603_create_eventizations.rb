class CreateEventizations < ActiveRecord::Migration
  def change
    create_table :eventizations do |t|
      t.references :pmu, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
