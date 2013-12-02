class Grower < ActiveRecord::Base
	belongs_to :group
	has_many :pmus,dependent: :destroy
	validates :name , presence:true

end
