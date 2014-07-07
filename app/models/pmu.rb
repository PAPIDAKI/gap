class Pmu < ActiveRecord::Base
	belongs_to :grower
	validates :produce,:variety , presence:true

	

	has_many :facilitations
	has_many :facilities,:through=>:facilitations

	geocoded_by :nearest_village
	after_validation :geocode ,:if=>:nearest_village_changed?

	has_many :logs ,dependent: :destroy
	has_many :irrigations ,through: :logs
	has_many :cultivations ,through: :logs
	has_many :fertilizations ,through: :logs
	has_many :maintenances, through: :logs
	has_many :phyto_protections, through: :logs


end
