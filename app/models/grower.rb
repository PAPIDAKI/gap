class Grower < ActiveRecord::Base
	belongs_to :group 

	#belongs_to :user ,through: :group
	
	has_many :pmus,dependent: :destroy
	validates :name , presence:true
	
	has_many :cultivations ,dependent: :destroy

end
