class Standard < ActiveRecord::Base
	has_many :certifications
	has_many :productions ,through: :certifications

	has_many :pmus ,through: :productions
	has_many :produces ,through: :productions

end
