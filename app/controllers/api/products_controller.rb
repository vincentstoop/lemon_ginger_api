class Api::ProductsController < ApplicationController
  def index
    products = Product.all
    render status:200, json: products
  end

  def show
    product = Product.find(params[:id])
    render status:200, json: product
  end
end
