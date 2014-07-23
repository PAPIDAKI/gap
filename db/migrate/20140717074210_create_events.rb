class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.text :note
      t.string :operator
      t.hstore :fields

      t.timestamps
    end
  end
end
