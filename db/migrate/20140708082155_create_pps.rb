class CreatePps < ActiveRecord::Migration
  def change
    create_table :pps do |t|
      t.string :quantity
      t.references :logentry, index: true

      t.timestamps
    end
  end
end
