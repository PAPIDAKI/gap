class ChangeDataTypeOfOptionToProgects < ActiveRecord::Migration
  def change
    change_column :projects ,:option,:string
  end
end
