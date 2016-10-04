class PageController < ApplicationController
  def index
  	@products = Product.where(public: true).take(6)
  end
end
