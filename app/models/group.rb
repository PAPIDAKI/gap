class Group < ActiveRecord::Base
	has_many :growers ,dependent: :destroy
end
