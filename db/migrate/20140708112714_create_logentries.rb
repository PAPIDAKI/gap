class CreateLogentries < ActiveRecord::Migration
  def change
    create_table :logentries do |t|
      t.date :date
      t.text :note
      t.string :operator
      t.integer :workers
      t.integer :pmu_id

      t.timestamps
    end
  end
end
