class Recipe < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :ingredients
  has_many :products, through: :ingredients
  has_and_belongs_to_many :users
  has_many :cooking_steps
  has_many :photos
  belongs_to :admin

  accepts_nested_attributes_for :ingredients, allow_destroy: true
  accepts_nested_attributes_for :cooking_steps, allow_destroy: true
end
