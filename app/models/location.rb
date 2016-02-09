class Location < ActiveRecord::Base

  binding.pry
  geocoded_by :address
  after_validation :geocode
end
