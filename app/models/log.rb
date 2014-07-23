class Log < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :logentry
end
