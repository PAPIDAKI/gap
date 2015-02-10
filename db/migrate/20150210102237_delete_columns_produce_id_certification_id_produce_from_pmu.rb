class DeleteColumnsProduceIdCertificationIdProduceFromPmu < ActiveRecord::Migration
  def change
		remove_column :pmus,:produce_id
		remove_column :pmus,:produce
		remove_column :pmus,:certification_id
		remove_column :pmus,:ggcert
		remove_column :pmus,:variety
  end
end
