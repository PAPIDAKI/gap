class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.text :description

      t.timestamps
    end
  end
end
