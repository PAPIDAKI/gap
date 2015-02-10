class Certification < ActiveRecord::Base
	belongs_to :production
	belongs_to :standard

	belongs_to :produce


	validates :standard_id ,presence: true

end
