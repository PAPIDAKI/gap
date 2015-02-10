class Grower < ActiveRecord::Base
	belongs_to :group 	

	has_many :pmus,dependent: :destroy
	has_many :productions,through: :pmus
	has_many :produces,through: :productions
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications


	has_many :events ,dependent: :destroy
	delegate :evcults,:evphytos,:evferts,to: :events


	


	

	

end
