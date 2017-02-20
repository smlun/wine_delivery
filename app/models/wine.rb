class Wine < ApplicationRecord
  has_many :orders
  has_many :cart, through: :orders

  mount_uploader :wine_image, WineImageUploader
end
