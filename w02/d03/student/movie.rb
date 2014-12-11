class Movie

  attr_accessor :title, :director

  def initialize (title)
    @title = title
  end



end

flick = Movie.new ("Jaws")

Movie.director

# ## Part 3

# Imagine we could call `Movie#director`

# ```rb
# movie.director #=> nil
# movie.director = "Richard Ayoade" # >> "Director can only be set to a Person object!"
# movie.director #=> still nil!
# ```

# > Oh come on! A Person object?!

