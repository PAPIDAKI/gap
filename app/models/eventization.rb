class Eventization < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :event
end
