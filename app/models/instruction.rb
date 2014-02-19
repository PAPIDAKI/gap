class Instruction < ActiveRecord::Base
	belongs_to :clitem ,dependent: :destroy 
end
