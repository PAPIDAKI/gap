class Log < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :cultivation
  belongs_to :irrigation
  belongs_to :fertilization
  belongs_to :phyto_protection
  belongs_to :maintenance
end
