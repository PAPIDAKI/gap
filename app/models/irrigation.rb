class Irrigation < ActiveRecord::Base

  has_many :logs
  has_many :pmus,through: :logs

  validates :date, presence: true
  validates :operator, presence: true
  validates :duration, presence: true
end
