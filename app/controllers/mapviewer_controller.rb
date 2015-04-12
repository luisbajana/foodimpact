class MapviewerController < ApplicationController


  def index

    @food_array = Array.new

      @q = params[:q]
      if @q
         @foods = Food.where(name: @q).group(:country).sum(:sustainability).to_a
   
 
      @foods.unshift(["country","sustainability"])

        i= 0

        @foods.to_enum.each_with_index do |f, index|  
            
               if index > 0  
              
                 if f[i+1] > 0  
                       @food_array.push(f[i],1)

                  else  
                  	 @food_array.push(f[i],1)
        
       			      end  
       
             end  
        
         end   
else

  @foods = Food.where(name: @q).group(:country).sum(:sustainability).to_a
        @foods.unshift(["country","sustainability"])

 end
  
 render layout: "mapviewer"


end

  


end
