class CreateSystatiks < ActiveRecord::Migration
  def change
    create_table :systatiks ,:id =>false do |t|
      t.string :kodikos
      t.string :onomadron

      t.timestamps
    end
    execute "ALTER TABLE systatiks ADD PRIMARY KEY (kodikos);"
  end
end
