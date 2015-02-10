class Group < ActiveRecord::Base
	belongs_to :user
	has_many :growers ,dependent: :destroy

	has_many :pmus, through: :growers
	has_many :productions,through: :pmus
	has_many :produces,through: :productions
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications



	has_many :lines, through: :pmus
	has_many :subs,through: :lines


end
