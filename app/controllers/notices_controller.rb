class NoticesController < ApplicationController

  before_action :set_notice, only: [:show]

  def index
    @notices = Notice.where(public: true )
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end
end
