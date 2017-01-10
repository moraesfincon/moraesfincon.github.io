class AssistenceMailer < ApplicationMailer

  default :from => 'no-replay@tracertag.com'

  def notify_contact(email, name, phone, priority, subject, message, status, created_at)
    @email = email
		@name = name
		@phone = phone
		@priority = priority
		@subject = subject
		@message = message
    @status = status
		@created_at = created_at
    mail(to: email, subject: 'Contato site Tracertag.' )
  end



	def notify_admin(email, name, phone, priority, subject, message, status, created_at)
    @email = email
    @name = name
    @phone = phone
    @priority = priority
    @subject = subject
    @message = message
    @status = status
    @created_at = created_at
		mail( to: 'tracertag@tracertag.com',
					subject: "Suporte Tracertag: #{@subject} - Prioridade: #{@priority} ")
	end

end
