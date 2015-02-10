class Pmu < ActiveRecord::Base
	belongs_to :grower

	has_many :eventizations
	has_many :events ,through: :eventizations

	delegate :evcults,:evphytos,:evferts,to: :events


	has_many :productions
	has_many :certifications ,through: :productions
	has_many :produces,through: :productions
	has_many :certifications ,through: :productions
	has_many :standards,through: :certifications



	has_many :facilitations
	has_many :facilities,:through=>:facilitations

	geocoded_by :nearest_village
	after_validation :geocode ,:if=>:nearest_village_changed?

	#validates :variety , presence:true



end

