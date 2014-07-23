class Pmu < ActiveRecord::Base
	belongs_to :grower
	has_many :eventizations
	has_many :events ,through: :eventizations

	delegate :evcults,:evphytos,:evferts,to: :events
	
	


	

	has_many :facilitations
	has_many :facilities,:through=>:facilitations

	geocoded_by :nearest_village
	after_validation :geocode ,:if=>:nearest_village_changed?

	validates :produce,:variety , presence:true


	

end
