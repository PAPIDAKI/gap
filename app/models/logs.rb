class Logs < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :operations
end
