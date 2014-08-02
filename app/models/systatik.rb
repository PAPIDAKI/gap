class Systatik < ActiveRecord::Base

	def self.import(file)
		CSV.foreach(file.path,headers: true) do |row|
			systatik=find_by_id(row["id"]) || new
			systatik.attributes=row.to_hash
			systatik.save!
		end
	end




	
end
