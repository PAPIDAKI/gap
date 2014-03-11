class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :title
      t.string :result
      t.string :accountable
      t.references :clitem, index: true

      t.timestamps
    end
  end
end
