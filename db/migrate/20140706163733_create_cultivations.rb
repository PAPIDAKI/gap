class CreateCultivations < ActiveRecord::Migration
  def change
    create_table :cultivations do |t|
      t.date :date
      t.text :note
      t.string :operator
      t.integer :workers_num

      t.timestamps
    end
  end
end
