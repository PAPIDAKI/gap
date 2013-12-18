class Sub < ActiveRecord::Base
	has_many :lines  , dependent: :destroy
	has_many :pmus, :through => :lines

	accepts_nested_attributes_for :pmus

end
