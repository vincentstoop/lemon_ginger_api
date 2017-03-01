class Api::ProductsController < ApplicationController
  def show
    product = Product.find(params[:id])
    render status:200, json: product
  end
end
