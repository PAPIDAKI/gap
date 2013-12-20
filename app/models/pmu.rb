class Pmu < ActiveRecord::Base
	belongs_to :grower
	validates :produce,:variety , presence:true

	has_many :lines  , dependent: :destroy
	has_many :subs, :through => :lines
	
end
