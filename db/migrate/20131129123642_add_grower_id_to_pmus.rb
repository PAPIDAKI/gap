class AddGrowerIdToPmus < ActiveRecord::Migration
  def change
    add_column :pmus, :grower_id, :integer
  end
end
