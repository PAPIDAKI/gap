class Systatik < ActiveRecord::Base
	has_many :droncrops
	has_many :crops ,through: :droncrops

	def self.import(file)
		CSV.foreach(file.path,headers: true) do |row|
			systatik=find_by_kodikos(row["kodikos"]) || new
			systatik.attributes=row.to_hash
			systatik.save!
		end
	end




	
end
