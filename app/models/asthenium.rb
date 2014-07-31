class Asthenium < ActiveRecord::Base
	def self.import(file)
	    CSV.foreach(file.path,headers: true) do |row|
			asthenium=find_by_id(row["id"])|| new
			asthenium.attributes=row.to_hash
			asthenium.save!
		 end
	end
end


