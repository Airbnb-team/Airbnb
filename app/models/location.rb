class Location < ApplicationRecord
	belongs_to :room

	geocoded_by [:address, :latitude, :longitude]
end
