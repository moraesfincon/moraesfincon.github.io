class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      respond_to do |format|
        format.js {
          flash[:notice] = "Currículo enviado com sucesso!"
        }
      end
    else
      render "new"
    end
  end

  private
    def params_contact
      params.require(:contact).permit(
        :name,
        :email,
        :occupation,
        :phone,
        :subject,
        :message
      )
    end
end
