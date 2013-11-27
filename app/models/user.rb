class User < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :longitude, :title
  geocoded_by :address
  after_validation :geocode

end
