class Api::RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :cooking_time, :featured, :published, :week_recipe, :intro

  has_many :categories
  has_many :ingredients
  has_many :cooking_steps
  has_many :users
  has_many :photos
end
