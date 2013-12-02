class Pmu < ActiveRecord::Base
	belongs_to :grower
	validates :produce,:variety , presence:true

end
