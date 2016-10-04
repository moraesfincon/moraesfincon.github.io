class PageController < ApplicationController

  def index
  	@products_main = Product.where(main: true).take(1)
  	@products = Product.where(public: true).take(6)
    @banners  = Banner.where(public: true)
  end

end
