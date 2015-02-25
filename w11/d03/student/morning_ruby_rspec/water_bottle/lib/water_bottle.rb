class WaterBottle

  attr_reader :brand, :capacity

  def initialize(brand, capacity)
    @brand = brand
    @capacity = capacity
    @amount = 0
    # @is_empty = true
  end

  def @empty?
    @is_empty
  end

  def fill
    # @is_empty = false
    @amount = @capacity
  end

  def measure
    @amount
  end

  def squirt
  end


end
