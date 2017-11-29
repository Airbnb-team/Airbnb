class Room < ApplicationRecord
  belongs_to : user
  has_many : reservations
  has_many : reviews
  has_many : photos
  has_many : favarites
  has_many : amenities
  has_many : rules
end
