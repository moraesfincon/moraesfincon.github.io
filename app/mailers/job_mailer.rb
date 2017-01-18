class JobMailer < ApplicationMailer

  default :from => 'no-replay@tracertag.com'

	def notify_admin(name, email, workspace, message, curriculum, created_at)
    @name = name
    @email = email
    @workspace = workspace
    @message = message
    @curriculum = curriculum
    @created_at = created_at
		mail( to: 'tracertag@tracertag.com',
					subject: "Trabalhe conosco: #{@name} enviou um currículo.")
	end

end
