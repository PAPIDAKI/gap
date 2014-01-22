class CreateFacilitations < ActiveRecord::Migration
  def change

    create_table :facilitations do |t|
      t.integer :pmu_id
      t.integer :facility_id
      

      t.timestamps
    end
  end
end
