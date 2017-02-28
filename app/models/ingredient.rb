class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :product

  validates :optional, inclusion: {in: [true, false]}
end
