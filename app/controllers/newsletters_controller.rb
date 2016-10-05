class NewslettersController < ApplicationController

  def create
    @newsletter = Newsletter.new(params_newsletter)
    if @newsletter.save
      respond_to do |format|
        format.js {
          flash[:notice] = "Email cadastrada com sucesso"
        }
      end
    else
      render js => "alert('erro ao tentar se cadastrar);"
    end
  end

  private
    def params_newsletter
      params.require(:newsletter).permit(:email)
    end
end
