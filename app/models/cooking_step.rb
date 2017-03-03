class CookingStep < ApplicationRecord
  belongs_to :recipe
  
  validates :cooking_time, numericality: { only_integer: true }, allow_nil: true
  validates :description, presence: true
end
