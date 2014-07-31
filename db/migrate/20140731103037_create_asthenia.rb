class CreateAsthenia < ActiveRecord::Migration
  def change
    create_table :asthenia do |t|
      t.string :code_asten
      t.string :astenia
      t.string :nastenia

      t.timestamps
    end
  end
end
