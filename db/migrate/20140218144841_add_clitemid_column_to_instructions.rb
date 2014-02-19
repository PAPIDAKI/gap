class AddClitemidColumnToInstructions < ActiveRecord::Migration
  def change
    add_column :instructions, :clitem_id, :integer
  end
end
