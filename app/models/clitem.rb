class Clitem < ActiveRecord::Base
	  has_many :instructions, dependent: :destroy
	  has_many :procedures,   dependent: :destroy
	  has_many :steps ,through: :procedures
	


	def self.import(file)
		CSV.foreach(file.path,headers: true) do |row|
			Clitem.create! row.to_hash

		
		end
		
	end


	def next
    Clitem.where("id > ?",self.id).order("id ASC").first ||Clitem.first
  	end

  def previous
     Clitem.where("id < ?",self.id).order("id DESC").first || Clitem.last
  end
	
end

