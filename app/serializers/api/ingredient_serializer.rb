class Api::IngredientSerializer < ActiveModel::Serializer
  attributes :id, :amount, :optional, :product

  has_one :product
end
