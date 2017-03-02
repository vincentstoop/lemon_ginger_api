class Photo < ApplicationRecord
  belongs_to :recipe

  mount_uploader :image, ImageUploader

  validates :recipe, presence: :true
end
