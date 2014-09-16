class Crop < ActiveRecord::Base

	has_many :epembashes
	has_many :farmakos ,through: :epembashes

	has_many :droncrops
	has_many :systatiks ,through: :droncrops

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
