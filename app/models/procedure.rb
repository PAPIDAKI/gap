class Procedure < ActiveRecord::Base
	belongs_to :clitem 
	has_many :steps ,dependent: :destroy 
end
