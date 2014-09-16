class Droncrop < ActiveRecord::Base
	belongs_to :systatik , :foreign_key=> "kodikos"
	belongs_to :crop , :foreign_key=> "id"


	
	def self.import(file)
		CSV.foreach(file.path,headers: true) do |row|
			droncrop=find_by_id(row["id"])||new
			droncrop.attributes=row.to_hash
			droncrop.save!
		end
	end


end
