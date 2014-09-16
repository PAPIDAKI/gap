class DronCrop < ActiveRecord::Base
	def self.import(file)
		CSV.foreach(file.path,headers: true) do |row|
			droncrop=find_by_id(row["id"]) || new
			droncrop.attributes=row.to_hash
			droncrop.save!
		end

	end


	
end
