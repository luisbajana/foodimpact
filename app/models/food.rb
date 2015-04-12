class Food < ActiveRecord::Base
  attr_accessible  :address, :category, :latitude, :longitude, :name, :quantity_produced, :quantity_consumed, :sustainability, :country, :user_id
  
   before_create :set_sustentability

  geocoded_by :address
  after_validation :geocode

  


def set_sustentability
 
  	self.address = self.country

	if self.sustainability > 0
		self.sustainability = 1
	else
		self.sustainability = 0
	end
end



end
