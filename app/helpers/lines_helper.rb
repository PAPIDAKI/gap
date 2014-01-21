module LinesHelper
	def pp_status(line)
		if line.days_to_clear(line)<0
			"Clean"
		else
			line.days_to_clear(line)
		end
	end

end


