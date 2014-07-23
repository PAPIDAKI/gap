class Logentry < ActiveRecord::Base

	has_many :logs ,dependent: :destroy
    has_many :pmus ,through: :logs

    has_many :pps, dependent: :destroy
	
end
