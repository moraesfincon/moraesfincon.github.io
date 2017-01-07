class FlyersController < ApplicationController

  def index
    @flyers = Flyer.order(id: :desc)
  end
end
