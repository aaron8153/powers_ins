class UserMailer < ActionMailer::Base
  default :from => "no-reply@powersinsurance.com"
  
  def confirmation_email(user)
  	@user = user
  	mail(:to => user.email, :subject => "Powers Insurance and Benefit has received your request.")
  end
end
