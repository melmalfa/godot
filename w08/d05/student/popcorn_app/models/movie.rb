class Movie < ActiveRecord::Base
  # may have many?
  has_many :purchases
  has_and_belongs_to_many :genres

  def available?
    if released_on.to_time < Time.now
    # if (Time.now - released_on.to_time) >= 0
      true
    else
      false
    end
  end

  def formatted_time
    hours = running_time/60
    minutes = running_time - (hours*60)
# i could add an if else loop to make it for hour and minutes when only one hour
    running_time
    hours + " Hours and " + minutes + " Minutes."
  end

  def rented_by?(user)
    ownrent = Purchase.joins(:movie_id)
    user = ownrent.user_id
    ownrent.own_or_rent
  end

  def owned_by?(user)
  end

end
