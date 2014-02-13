class Ggcl < ActiveRecord::Base
	def self.to_csv(options={})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do|ggcl|
				csv << ggcl.attributes.values_at(*column_names)
			end
		end
	end

	

	def self.import(file)
		

		CSV.foreach(file.path,headers: true) do |row|
			Ggcl.create! row.to_hash
			#ggcl=find_by_id(row["id"])|| new

			#parameters=ActionController::Parameters.new(row.to_hash)
			#ggcl.update(parameters.permit(:id,:number,:module))
			#ggcl.save!

	 
  	  
  	end
	
	


end