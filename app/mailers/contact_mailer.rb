class ContactMailer < ActionMailer::Base
	default to: 'bucko.wojciech@gmail.com'

	def contact_email(name, email, body)
		@name = name
		@email = email
		@body = body

		mail(from: email, subject: 'Wiadomość z Filmoteki')
	end

end