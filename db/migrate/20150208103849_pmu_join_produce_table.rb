class PmuJoinProduceTable < ActiveRecord::Migration
  def change
		create_table :pmus_produces ,id: false do |t|
      t.belongs_to :pmu, index: true
			t.belongs_to :produce,index: true
		end

  end
end
