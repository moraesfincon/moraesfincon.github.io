class AssistancesController < ApplicationController

  def new
    @assistance = Assistance.new
  end

  def create
    @assistance = Assistance.new(params_assistance)
    if params[:status] == nil
      params[:status] = '1'
    end
    if @assistance.save
      respond_to do |format|
        format.js {
          flash[:notice] = "Chamdo aberto com sucesso!"
        }
      end
    else
      render "new"
    end
  end

  private
    def params_assistance
      params.require(:assistance).permit(
        :name,
        :email,
        :phone,
        :priority,
        :subject,
        :message,
        :status
      )
    end
end
