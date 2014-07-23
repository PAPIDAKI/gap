class Grower < ActiveRecord::Base
	belongs_to :group 	

	has_many :pmus,dependent: :destroy
	has_many :events ,dependent: :destroy
	delegate :evcults,:evphytos,:evferts,to: :events


	


	

	

end
