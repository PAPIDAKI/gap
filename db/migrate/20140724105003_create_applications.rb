class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :event, index: true
      t.references :solution, index: true

      t.timestamps
    end
  end
end
