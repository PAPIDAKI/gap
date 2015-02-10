class RemoveAndAddColumnsToCertification < ActiveRecord::Migration
  def change
		remove_column :certifications,:produce_id
		remove_column :certifications,:pmu_id
		add_column :certifications,:production_id,:integer
		add_index  :certifications ,:production_id

  end
end
