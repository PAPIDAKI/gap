class CreateGrowers < ActiveRecord::Migration
  def change
    create_table :growers do |t|
      t.string :name
      t.string :address
      t.string :mobile
      t.string :ggn

      t.timestamps
    end
  end
end
