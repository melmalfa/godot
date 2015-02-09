class User < ActiveRecord::Base
  has_many :purchases
  has_many :movies, :through => :purchases

  def age
      now = Time.now.utc.to_date
      now.year - born_on.year - ((now.month > born_on.month || (now.month == born_on.month && now.day >= born_on.day)) ? 0 : 1)
  end

  def can_afford_to_buy?(movie_title)
    movie_title =
    if
      balance > movies.purchase_price
    else
      return false
    end
  end

  # space_travelers.each do |space_traveler|
  #     thanks += "  - " + space_traveler.full_name + "\n"
  #   end
    # which takes a movie object as a paramter and returns true or false based on if they have enough money to buy that movie

  def can_afford_to_rent?(movie)
  end
  # which takes a movie object as a parameter and returns true or false based on if they have enough money to rent a movie

  def can_view?(movie)
  end
  # which takes a movie object as a parameter and returns true or false based on if they are of an appropriate age based on the movie's rating.

  def buy(movie)
  end
   # checks that the movie can be purchased then either creates a new Purchase for that User and deducts the purchase price or returns false. If the user already owns the movie, a new purchase is not created and the method returns false.

  def rent(movie)
  end
  # checks that the user can rent the movie then either creates a new Purchase for that User and deducts the rental price or returns false

  def rented_movies
  end
  # returns only movies that the User has rented
  # purchased_movies returns the movies that the User has purchased

  def owns?(movie)
  end
  # takes a movie object and returns true or false based on whether the user owns it.


end
