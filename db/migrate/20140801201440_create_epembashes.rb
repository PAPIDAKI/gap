class CreateEpembashes < ActiveRecord::Migration
  def change
    create_table :epembashes do |t|
      t.references :farmako, index: true
      t.references :crop
      t.string :diast_pros
      t.string :comments

      t.timestamps
    end
  end
end
