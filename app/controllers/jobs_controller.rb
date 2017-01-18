class JobsController < ApplicationController

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params_job)
    if @job.save
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
    def params_job
      params.require(:job).permit(
        :name,
        :email,
        :workspace,
        :message,
        :curriculum
      )
    end
end
