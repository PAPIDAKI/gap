class Group < ActiveRecord::Base
	has_many :growers ,dependent: :destroy
	has_many :pmus, through: :growers

end
