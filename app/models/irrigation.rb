class Irrigation < ActiveRecord::Base
  belongs_to :pmu 

  validates :date, presence: true
  validates :operator, presence: true
  validates :duration, presence: true
end
