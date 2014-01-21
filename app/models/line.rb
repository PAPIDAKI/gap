class Line < ActiveRecord::Base
	belongs_to :pmu 
	belongs_to :sub 

	def clear_date(line)
		line.date+line.phi
	end

	def days_to_clear(line)
		(line.clear_date(line)-Date.today).to_i
	end

	

end
