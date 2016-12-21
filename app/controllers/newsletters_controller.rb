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
      puts "Chegou aqui"
    end
  end

  private
    def params_newsletter
      params.require(:newsletter).permit(:email)
    end
end
