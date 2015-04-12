class MapviewerController < ApplicationController


  def index


  q="trigo"


 
 
   @foods = Food.where(:name => q).group(:country).sum(:sustainability).to_a

   @foods.unshift(["country","sustainability"])


   

 


  # @foods.each do |food|

  #   if food.name == q    
  #       @arr_countries.push(food.country,food.sustainability.to_i)    
  #   end

  # end
   
   


 render layout: "mapviewer"


end

  


end
