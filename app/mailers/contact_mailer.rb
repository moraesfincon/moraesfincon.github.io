class ContactMailer < ApplicationMailer

  default :from => 'no-replay@tracertag.com'

  def notify_contact(email, name, phone, subject, message, created_at)
    @email = email
		@name = name
		@phone = phone
		@subject = subject
		@message = message
		@created_at = created_at
    mail(to: email, subject: 'Contato site Tracertag.' )
  end



	def notify_admin(email, name, phone, subject, message, created_at)
		@email = email
		@name = name
		@phone = phone
		@subject = subject
		@message = message
		@created_at = created_at
		mail( to: 'tracertag@tracertag.com',
					subject: "Fale conosco: #{@name} entrou em contato.")
	end

end
