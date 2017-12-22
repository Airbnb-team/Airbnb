class Location < ApplicationRecord
	belongs_to :room

	geocoded_by :postal_code
  after_validation :geocode 

end
