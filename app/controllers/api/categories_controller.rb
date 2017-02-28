class Api::CategoriesController < ApplicationController
  def index
    categories = Category.all
    render status:200, json: {
      categories: categories
    }.to_json({include: [:recipes] })
  end

  def show
    category = Category.find(params[:id])
    render status:200, json: {
      category: category
    }.to_json({include: [:recipes] })
  end
end
