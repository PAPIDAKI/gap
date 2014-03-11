class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.string :description
      t.string :step_accountable
      t.references :procedure, index: true

      t.timestamps
    end
  end
end
