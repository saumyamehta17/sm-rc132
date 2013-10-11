class ProductsController < ApplicationController
  def index
    @prod_desc = Product.description
  end
end
