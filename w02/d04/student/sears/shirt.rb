class Shirt < Product

  attr_accessor :color, :text
  attr_reader :size

  def initialize (p, b, c, t, s)
    super (p, b)
    @color = c
    @text = t
    @size = s
  end
end
