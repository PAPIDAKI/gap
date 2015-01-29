class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :produce
      t.boolean :type
      t.text :name

      t.timestamps
    end
  end
end
