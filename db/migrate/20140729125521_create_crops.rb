class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.string :kathg
      t.string :eidos
      t.string :gonoma

      t.timestamps
    end
  end
end
