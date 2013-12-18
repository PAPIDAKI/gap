class Pmu < ActiveRecord::Base
	belongs_to :grower
	validates :produce,:variety , presence:true

	has_many :lines  , dependent: :destroy
	has_many :pmus, :through => :lines
	
	accepts_nested_attributes_for :subs

end
