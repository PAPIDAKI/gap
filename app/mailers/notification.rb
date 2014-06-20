class Notification < ActionMailer::Base
  default from: "from@example.com"

 # def new_account(user)
 # 	@user=user
 # 	mail(to: user.email,subject:"The account #{user.name} is active .")
 # end
end
