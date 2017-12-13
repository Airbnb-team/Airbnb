class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :favarites

  mount_uploader :image, ImageUploader

end
