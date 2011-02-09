class PowersMailer < ActionMailer::Base
	default :from => "no-reply@powersinsurance.com"
  def confirmation_email(user, request)
  	@user = user
  	@request = request
  	mail(:to => "henryp@powersinsurance.com, aaron.jacobs@jbasol.com", :subject => "POWERS Insurance and Benefits has received your request.")
  end
end
