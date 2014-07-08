class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :brand
      t.string :active_ingredient
      t.string :application_for
      t.string :recomended_dosage

      t.timestamps
    end
  end
end
