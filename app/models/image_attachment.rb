class ImageAttachment < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :oplung
end
