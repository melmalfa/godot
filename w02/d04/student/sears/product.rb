class Product

  attr_reader   :brand
  attr_accessor :price

  def initialize(p, b)
    @price = p
    @brand = b
  end

end


# what does a product expect upon instantiation?
# to initialize price and brands
