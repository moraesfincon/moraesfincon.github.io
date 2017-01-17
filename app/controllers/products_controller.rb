class ProductsController < ApplicationController

  def index
    @products = Product.where(public: true, launch: true ).order(:order_position )
    @products_launch = Product.where(launch: true)
  end

end
