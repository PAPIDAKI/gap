class Solution < ActiveRecord::Base
	#has_many :applications ,dependent: :destroy
	#has_many :events,through: :applications
	belongs_to :event 

end
