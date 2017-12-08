class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews
  has_many :photos
  has_many :favorites
  has_many :amenities
  has_many :rules
  has_many :bedrooms
  has_many :bathrooms
  has_many :locations
  has_many :explanatories
end
