class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      respond_to do |format|
        format.js {
          flash[:notice] = "Contato enviado com sucesso"
        }
      end
    else
      render js => "alert('erro ao tentar enviar contato);"
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