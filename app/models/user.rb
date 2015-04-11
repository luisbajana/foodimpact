class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :latitude, :longitude, :address
  
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  # attr_accessible :title, :body
end
