class SoluctionsController < ApplicationController

  def index
    @soluctions = Soluction.order(:order).all
  end

end
