class SoluctionsController < ApplicationController

  def index
    @soluctions = Soluction.all
  end

end
