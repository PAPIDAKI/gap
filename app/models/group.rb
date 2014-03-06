class Group < ActiveRecord::Base
	has_many :growers ,dependent: :destroy
	has_many :pmus, through: :growers
	has_many :lines, through: :pmus
	has_many :subs,through: :lines

	belongs_to :user

end
