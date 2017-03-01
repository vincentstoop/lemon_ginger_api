class Api::RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :cooking_time, :intro, :featured, :published, :persons

  has_many :categories
  has_many :ingredients
  has_many :products, through: :ingredients
  has_many :users
  has_many :cooking_steps
  has_many :photos
end
