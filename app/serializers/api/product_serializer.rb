class Api::ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :ingredients
  has_many :recipes, through: :ingredients
end
