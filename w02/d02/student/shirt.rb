class Shirt

attr_reader :size
attr_writer :size

  def initialize(size, color, text)
    @size = size
    @color = color
    @text = text
  end

    def size=(a)
      @size = a
    end

    def size
      @size
    end

    def color=(b)
      @color = b
    end

    def color
      @color
    end

    def text=(c)
      @text = c
    end

    def text
      @text
    end

  end

  pearl_jam_t = Shirt.new("XL", "Faded Black", "'Yield Tour 1998")

  hipster_plaid = Shirt.new("M", "red", "No Logo")

  david_beckham_jersey = Shirt.new("Large", "white", "Beckham")

