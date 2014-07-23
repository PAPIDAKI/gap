class Event < ActiveRecord::Base
	belongs_to :grower
	has_many :eventizations
	has_many :pmus ,through: :eventizations

	self.inheritance_column = :type

	scope :evcults,->{ where(type:'Evcult')}
	scope :evferts,->{ where(type:'Evfert')}
	scope :evphytos,->{ where(type:'Evphyto')}

	


end

class Evfert < Event;end
class Evcult < Event;end
class Evphyto< Event;end 