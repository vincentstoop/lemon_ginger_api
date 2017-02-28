class Api::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render status:200, json: {
      recipes: recipes
    }.to_json({include: [:cooking_steps, :ingredients, :categories, :photos] })
  end

  def show
    recipe = Recipe.find(params[:id])
    render status:200, json: {
      recipe: recipe
    }.to_json({include: [:cooking_steps, :ingredients, :categories, :photos] })
  end
end
