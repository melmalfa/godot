class Vehicle

  attr_accessor :description, :capacity, :location
  attr_reader :passengers

  def initialize (d, c, l)
    @description = d
    @capacity = c
    @location = l
    @passengers = []
  end

  def add_passenger(x)
    passengers << x
  end

  def in_danger?
   passengers > capacity = true
  end

  def

end

# class Student < Human

#   attr_reader :homeworks

#   def initialize(name, age)
#     puts "I occur before super gets called"
#     super(name, age) # tells ruby to go to the superclass (Human), and run the code found in the method of the same name
#     puts "I occur after super gets called"
#     @homeworks = []
#   end

#   def do_homework(x)
#     homeworks << x
#   end
# end


# capacity, an integer

#
# description,capacity, location should all be immutable.
