class ProductsController < ApplicationController

  def index
    @products = Product.where(public: true, launch: true).order(:order_position )
  end

end
