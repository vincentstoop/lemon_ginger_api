class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :product

  validates :optional, inclusion: {in: [true, false]}
  validates :product, presence: true
  validates :recipe, presence: true
end
