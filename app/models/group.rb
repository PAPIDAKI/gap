class Group < ActiveRecord::Base
	belongs_to :user
	has_many :growers ,dependent: :destroy

	has_many :pmus, through: :growers
	has_many :lines, through: :pmus
	has_many :subs,through: :lines


end
