class Farmako < ActiveRecord::Base

	has_many :epembashes
	has_many :crops ,through: :epembashes

	def self.import(file)
		CSV.foreach(file.path,headers: true)do |row |
		 farmako=find_by_id(row["id"]) || new 
		 farmako.attributes= row.to_hash
		 farmako.save!
	     end
        end
end
