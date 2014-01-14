class Fertilizer < ActiveRecord::Base
	belongs_to :pmu 
	belongs_to :sub 
end
