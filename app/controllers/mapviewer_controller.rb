class MapviewerController < ApplicationController


  def index

   @foods = Food.all
   
   @foods_array =  []
   @foods_array << ['Country', 'Popularity']


   
   @foods.each do |food|
    @foods_array << [food.name,food.sustainability.to_i]
  end
  

  render layout: "mapviewer"
end
end
