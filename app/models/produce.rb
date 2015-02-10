class Produce < ActiveRecord::Base
	has_many :productions
	has_many :pmus,through: :productions

	has_many :certifications,through: :productions
	has_many :standards,through: :certifications


	validates :name,presence: true,uniqueness: true
end
