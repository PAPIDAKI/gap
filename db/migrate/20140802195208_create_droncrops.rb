class CreateDroncrops < ActiveRecord::Migration
  def change
    create_table :droncrops do |t|
      t.string :kodikos
      t.integer :code_fyta
      t.string :crops

      t.timestamps
    end
  end
end
