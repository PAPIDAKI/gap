class AddPhiToLines < ActiveRecord::Migration
  def change
    add_column :lines, :phi, :integer
  end
end
