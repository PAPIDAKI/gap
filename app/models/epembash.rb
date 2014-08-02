class Epembash < ActiveRecord::Base
  belongs_to :farmako
  belongs_to :crop


  def self.import(file)
  	CSV.foreach(file.path,headers: true) do |row|
  		epembash=find_by_id(row["id"]) || new
  		epembash.attributes=row.to_hash
  		epembash.save!
         end
  end


end
