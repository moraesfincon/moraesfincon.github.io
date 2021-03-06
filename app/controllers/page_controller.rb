class PageController < ApplicationController

  before_action :new

  def index
  	@products_main = Product.where(main: true).take(3)
    @products_launch = Product.where(launch: true).take(3)
  	@products = Product.where(public: true).order(order_position: :asc).take(6)
    @banners  = Banner.where(public: true)
    @ad  = Ad.where(public: true).sample
  end

  private
    def new
      @newsletter = Newsletter.new
    end

end
