class Pmu < ActiveRecord::Base
	belongs_to :grower
	validates :produce,:variety , presence:true

	has_many :lines  , dependent: :destroy
	has_many :subs, :through => :lines

	has_many :fertilizers ,dependent: :destroy
	has_many :subs, :through => :fertilizers

	has_many :irrigations ,dependent: :destroy

	has_many :facilitations
	has_many :facilities,:through=>:facilitations

	geocoded_by :nearest_village
	after_validation :geocode ,:if=>:nearest_village_changed?

	
end
