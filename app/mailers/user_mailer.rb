class UserMailer < ActionMailer::Base
	

	def contact_email(user_email,user_name,user_message,subject)
		@user_email = user_email
		@user_name = user_name
		@message = user_message
		@subject = subject
		@url  = 'http://example.com/login'
		mail(to: 'info@enlitening.com',from: user_email,subject: subject)
	end
end
