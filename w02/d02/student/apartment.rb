
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


def apt_price()

end


An **apartment's** price should be dynamically calculated based on the number of beds ($1000 per bed) and the number of bathrooms ($500 per bathroom).

Example Usage:

```rb
a2 = Apartment.new("A", 2, 1)
a2.price #=> "$2500"


