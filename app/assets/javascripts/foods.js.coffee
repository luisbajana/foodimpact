# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
  

jQuery ->
 
 $("#food_quantity_consumed").click ->


  citycountry = $("#food_address").val().split(",") 
 
  if citycountry.length > 2
   country = citycountry[2]
   $("#food_country").val( country )

  else
   country = citycountry[1]
   $("#food_country").val( country )
