class ProductsController < ApplicationController

  def index
    @products = Product.where(public: true).order(:order_position )
  end

end
