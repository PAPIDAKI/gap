class AddProduceColumnToPmu < ActiveRecord::Migration
  def change
		Pmu.delete_all
		add_column :pmus,:produce,:string
  end
end
