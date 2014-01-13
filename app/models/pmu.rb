class Pmu < ActiveRecord::Base
	belongs_to :grower
	validates :produce,:variety , presence:true

	has_many :lines  , dependent: :destroy
	has_many :subs, :through => :lines

	has_many :fertilizers ,dependent: :destroy
	has_many :subs, :through => :fertilizers

	has_many :irrigations ,dependent: :destroy
	
end
