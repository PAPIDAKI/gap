class Line < ActiveRecord::Base
	belongs_to :line  
	belongs_to :sub 

	accepts_nested_attributes_for :subs
	accepts_nested_attributes_for :pmus


end
