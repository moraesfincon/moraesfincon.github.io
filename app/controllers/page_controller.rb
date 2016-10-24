class PageController < ApplicationController

  before_action :new

  def index
  	@products_main = Product.where(main: true).take(1)
    @products_launch = Product.where(launch: true, public: true).take(3)
  	@products = Product.where(public: true).take(6)
    @banners  = Banner.where(public: true)
  end

  private
    def new
      @newsletter = Newsletter.new
    end

end
