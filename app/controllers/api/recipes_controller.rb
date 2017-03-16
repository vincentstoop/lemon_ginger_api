class Api::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render status: 200, json: recipes
  end

  def show
    recipe = Recipe.find(params[:id])
    render status: 200, json: recipe
  end

  def week
    recipe = Recipe.all.where(week_recipe: TRUE).order(created_at: :desc).limit(1)
    render status: 200, json: recipe
  end

end
