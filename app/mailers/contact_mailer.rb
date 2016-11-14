class ContactMailer < ApplicationMailer

  def notify_contact(email)
    mail(to: email, subject: 'Contato site' )
  end
end



