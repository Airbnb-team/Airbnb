class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews
  has_many :photos, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :amenities
  has_many :rules
  has_many :bedrooms
  has_many :bathrooms
  has_many :locations
  has_many :explanatories
  has_one :price
  has_one :group

  accepts_nested_attributes_for :photos, allow_destroy: true

  def favorite_user(id)
    favorites.find_by(user_id: id)
  end

  def reject_sub_images(attributed)
    attributed['image'].blank?
  end

  def set_main_thumbnail
    photos.main.first.image
  end

end
