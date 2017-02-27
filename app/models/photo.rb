class Photo < ApplicationRecord
  belongs_to :recipe

  mount_uploader :image, ImageUploader

end
