class Clitem < ActiveRecord::Base
	  has_many :instructions, dependent: :destroy
	


	def self.import(file)
		#CSV.foreach(file.path,headers:true) do |row|
		#Clitem.create! row.to_hash
		#	clitem=find_by_number(row["number"]) || new
		#	clitem.attributes=row.to_hash.
		#	clitem.save!
		#end
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
	   (2..spreadsheet.last_row).each do |i|
       row = Hash[[header, spreadsheet.row(i)].transpose]

       clitem = find_by_number(row["number"]) || new
       parameters = ActionController::Parameters.new(row.to_hash)
       clitem.update(parameters.permit(:number,:module,:about,:for,:control_point,:compliance_criteria))
       #accessible_attributes=[:number,:for,:about]
       #clitem.attributes = row.to_hash.slice(:module)
       clitem.save!
        end
	end


	def self.open_spreadsheet(file)
	  case File.extname(file.original_filename)
	  when '.csv' then Roo::Csv.new(file.path, nil, :ignore)
	  when '.xls' then Roo::Excel.new(file.path, nil, :ignore)
	  when '.xlsx' then Roo::Excelx.new(file.path, nil, :ignore)
	  else raise "Unknown file type: #{file.original_filename}"
	  end
	end
	
end

