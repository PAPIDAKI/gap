class AddLogLatEhdGgcertToPmus < ActiveRecord::Migration
  def change
    add_column :pmus, :longitude, :float
    add_column :pmus, :latitude, :float
    add_column :pmus, :ehd, :date
    add_column :pmus, :ggcert, :boolean
  end
end
