class Recipe < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :ingredients, dependent: :destroy
  has_many :products, through: :ingredients
  has_and_belongs_to_many :users
  has_many :cooking_steps, dependent: :destroy
  has_many :photos, dependent: :destroy
  belongs_to :admin

  accepts_nested_attributes_for :ingredients, allow_destroy: true
  accepts_nested_attributes_for :cooking_steps, allow_destroy: true

  validates :title, presence: true
  validate :cooking_time_cannot_be_blank_and_a_number
  validates :category_ids, presence: true

  private
  def cooking_time_cannot_be_blank_and_a_number
    if !cooking_time.present? #&& !(cooking_time.is_a? Integer)
      errors.add(:cooking_time, "must be filled in, and a number")
    elsif !(cooking_time.is_a? Integer)
      errors.add(:cooking_time, "must be a number")
    end
  end
end
