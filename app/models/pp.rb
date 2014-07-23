class Pp < ActiveRecord::Base
  belongs_to :logentry
  has_many :solutions ,dependent: :destroy
end
