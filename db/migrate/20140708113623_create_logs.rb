class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :pmu, index: true
      t.references :logentry, index: true

      t.timestamps
    end
  end
end
