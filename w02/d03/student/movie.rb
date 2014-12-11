# class Movie

# attr_accessor :title
#   def initialize (title)
#   end

# end





class Movie

  attr_accessor :title

  def initialize (title)
    @title = title
  end

end

class Person

  attr_accessor :director

  def initialize (director)

  end
end


movie = Movie.new ("Jaws")

movie.director

movie = Person.new ("richard")

movie.director = "Richard Ayoade"



# hey instructors! so I made part 1 and 2 work perfectly - yay! and now i realize i don;t know how you could see this, since i had to change and add and remove to keep moving on. i got to this last part of 3 and i couldn't figure out how to to the following (create a person object returned by movie.director) but i tried a bunch of different things, so now i am - yes- giving up and moving on to next problem as i want to learn and not bang my head against the . . . table. :)

# movie.director = "Richard Ayoade" # >> "Director can only be set to a Person object!"
# movie.director #=> still nil!
# ```



