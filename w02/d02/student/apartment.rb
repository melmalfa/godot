require_relative '.tenant'

class Apartment

def initialize(unit, num_beds, num_baths, tenants)
    @unit = unit
    @num_beds = num_beds
    @num_baths = num_baths
    @tenants = tenants
  end

attr_accessor :unit, :num_beds, :num_baths, :tenants

a1 = Apartment.new("1a", 2, 1, 7)
a2 = Apartment.new("2b", 1, 1, 1)
b4 = Apartment.new("12d", 3, 2, 3)

end

apartment_price = ["a1", "a2", "b4"]
# i know this is cheating, i need the array to be populated based on whatever new values might be entered for apartments. (how?) but will try this for now to see if at least on right track with formula.

apartment_price = (Apartment[1]*1000) + (Apartment[3]*500)

# or

# the following doesn't work
# Apartment.price do |idk|
#   (Apartment[1]*1000) + (Apartment[3]*500)
# end


# An **apartment's** price should be dynamically calculated based on the number of beds ($1000 per bed) and the number of bathrooms ($500 per bathroom).

# Example Usage:

# ```rb
# a2 = Apartment.new("A", 2, 1)
# a2.price #=> "$2500"


