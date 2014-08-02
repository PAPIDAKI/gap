class CreateSystatiks < ActiveRecord::Migration
  def change
    create_table :systatiks do |t|
      t.string :kodikos
      t.string :onomadron

      t.timestamps
    end
  end
end
