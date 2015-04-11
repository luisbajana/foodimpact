class Food < ActiveRecord::Base
  attr_accessible :address, :category, :latitude, :longitude, :name, :quantity_consumed, :quantity_produced, :sustainability, :country, :user_id

  geocoded_by :address
  after_validation :geocode

 




end
