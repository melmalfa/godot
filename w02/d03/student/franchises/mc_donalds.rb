class McDonalds
  attr_accessor :capacity, :open_at, :close_at, :yelp, :manager
  attr_reader   :location

  def initialize(location, capacity, open_at, close_at, yelp, manager)
    @location = location
    @capacity = capacity
    @open_at = open_at
    @close_at = close_at
    @yelp = yelp
    @manager = manager
    @served = 0
  end

  @@name = "Welcome to McDonald's, may I take your order?"
  @@mc_rib =


  def is_open_at?(time)
    open  = convert_time(@open_at)
    close = convert_time(@close_at)
    time  = convert_time(time)

    (open <= time) && (time <= close)
  end

  def convert_time(time)
    if time.include?("pm")
      time.gsub("am","").gsub("pm","").gsub(":","").to_i + 1200
    else
      time.gsub("am","").gsub("pm","").gsub(":","").to_i
    end
  end


  def order(num, menu_item)
    @served += num
    @@serve += num
    puts @@name
    "Here is your order of #{num} #{menu_item}. Thank you."
  end

  attr_reader :served
  # def served
  #   @served
  # end
  @@serve = 0

  def self.served
    @@serve
  end


@@rib = false

def self.mc_rib
  @@rib
end

def has_mc_rib?
  @@rib
end



#   Write a class method on McDonalds to get the status of the McRib, which is set to false by default. Then write an instance method that will get that status, in the form of a predicate method.

# class method .mc_rib
# instance method #has_mc_rib?
# Example (use in franchises.rb, after the above):

# McDonalds.mc_rib        #=> false
# chelsea_mcd.has_mc_rib? #=> false




end


# def initialize(location, capacity, open_time, closing_time, yelp_page, manager)
#     @location = location
#     @capacity = capacity
#     @open_time = open_time
#     @closing_time = closing_time
#     @yelp_page = yelp_page
#     @manager = manager
#   end

#   @@name = "Welcome to McDonald's, may I take your order?"

#   attr_accessor :capacity, :open_time, :closing_time, :yelp_page, :manager
#   attr_reader :location



#   def is_open_at?(time)
#     open  = convert_time(@open_at)
#     close = convert_time(@close_at)
#     time  = convert_time(time)

#     (open <= time) && (time <= close)
#   end

#   def convert_time(time)
#     if time.include?("pm")
#       time.gsub("am","").gsub("pm","").gsub(":","").to_i + 1200
#     else
#       time.gsub("am","").gsub("pm","").gsub(":","").to_i
#   end

#   def order(x,y)
#     $stdout.puts("Here is our order of #{x} #{y}. Thank you.")
#   end

#   def served
#   end

# # - `#served`: a method that takes no arguments and returns the number of menu
# # items (the sum total of the integers sent to `#order`) this franchise has served
# end






