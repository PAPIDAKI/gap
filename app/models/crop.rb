class Crop < ActiveRecord::Base

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			crop=find_by_id(row["id"]) || new
			crop.attributes=row.to_hash
			#crop.attributes=Crop.attributes
			crop.save!

			#Crop.create! row.to_hash
		end
	end






end
