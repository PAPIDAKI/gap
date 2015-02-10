class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.integer  :produce_id
      t.integer :pmu_id
      t.integer :standard_id

      t.timestamps
    end
  end
end
