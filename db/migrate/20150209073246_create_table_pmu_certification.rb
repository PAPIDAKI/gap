class CreateTablePmuCertification < ActiveRecord::Migration
  def change
	  create_table :pmus_certifications ,id: false do |t|
		  t.belongs_to :pmus, index: true
		  t.belongs_to :certifications,index: true
	  end
	end

end
