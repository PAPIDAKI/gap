class Maintenance < ActiveRecord::Base
	has_many :logs
	has_many :pmus, through: :logs
end
