class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :groups 
  has_many :growers ,through: :groups

  #after_create :send_welcome_email

  private

  #def send_welcome_email
  #	Notification.new_account(self).deliver
  #end



end
