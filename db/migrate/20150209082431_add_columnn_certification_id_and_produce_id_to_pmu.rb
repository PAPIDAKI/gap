class AddColumnnCertificationIdAndProduceIdToPmu < ActiveRecord::Migration
  def change
		add_column :pmus ,:produce_id,:integer
		add_index :pmus,:produce_id
		add_column :pmus ,:certification_id,:integer
		add_index :pmus ,:certification_id
  end
end
