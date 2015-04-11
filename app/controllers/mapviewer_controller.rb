class MapviewerController < ApplicationController
  def index



# hash = { a: true, b: false, c: nil}


# h1 = {'Germany' => {'foo' => 'this', 'cool' => 'guy'}, 
# 'h2.2' => {'bar' => '2000'} 

# }

# @hash = ['Country', 'Popularity'],
#     ['Germany', 200],
#     ['United States', 300],
#     ['Brazil', 400],
#     ['Canada', 500],
#     ['France', 600],
#     ['RU', 700]


  	render layout: "mapviewer"
  end
end
