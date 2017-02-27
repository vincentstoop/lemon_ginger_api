class Recipe < ApplicationRecord
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :users
  has_many :cooking_steps
  has_many :photos
  belongs_to :admin
end
