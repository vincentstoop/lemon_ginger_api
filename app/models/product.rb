class Product < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :recipes, through: :ingredients

  validates :name, presence: true
end
