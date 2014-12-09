class Concert

  def initialize(band, city, venue, date)
    @band = band
    @city = city
    @venue = venue
    @date = date

    def band=(a)
      @band = a
    end

    def band
      @sband
    end

    def city(b)
      @city = b
    end

    def city
      @city
    end

    def venue=(c)
      @venue = c
    end

    def venue
      @venue

    def date=(d)
      @date = d
    end

    def date
      @date
    end

  end

 best_night_of_life = Concert.new("Built to Spill", "Chicago", "the Metro", 2005)

  embarrassing_first_concert =Concert.new("Sugar Ray", "Milwaukee, Wisconsin", "Marcus Theater", 1998

