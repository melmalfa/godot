class Bike < Product

  attr_accessor :gear_count, :tire_diameter

    def initialize (price, brand, gear_count, tire_diameter)
      super (price, brand)
      @gear_count = gear_count
      @tire_diameter = tire_diameter
    end

# provide getter methods for the bike-specific attributes
end
