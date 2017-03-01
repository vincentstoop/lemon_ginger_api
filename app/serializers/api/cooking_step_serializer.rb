class Api::CookingStepSerializer < ActiveModel::Serializer
  attributes :id, :title, :cooking_time, :description

  belongs_to :recipeg
end
