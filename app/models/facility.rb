class Facility < ActiveRecord::Base
	has_many :facilitations
	has_many :pmus, :through=> :facilitations
end
