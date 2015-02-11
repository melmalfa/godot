class CheesesController < ApplicationController

  def index
    @cheeses = Cheese.all
  end

end

# GET requests to /cheeses should have a heading that says, "The Great Hall of Cheeses", followed by an unordered list of links to cheeses, i.e. /cheeses/1, /cheeses/2, /cheeses/3, and so on.
