module Pickup

  class Server < Sinatra::Base

    get('/') do
      compliments = ["Your posture is definitely improving while you sit in place all day long.", "Your instructors adore you (in a non-creepy way).", "A secret admirer left you a special brownie in the community fridge.", "Lack of sleep will keep you young.", "In less than 3 months, companies will be entangled in a bidding war trying to obtain your skills.", "Your classmates only know the best side of you.", "Your humility under pressure is overwhelming.", "Before you arrive in the morning, your classmates bet on who is lucky enough to sit next to you today.", "You're smarter than Mr. Ed. I heard this straight from the horse's mouth.", "At least 2 GA students dreamt about you this week.", "Next week, GA will have a massage therapist available onsite during evening homework sessions, compliments of the school.", "Kyle thinks you have the most potential and is trying his best to land you your dream job before you even finish the program!", "PJ's puppy likes you the best.", "There's a contest for who stays the latest each weeknight. The prize is a full tuition refund.", "Sade wants to serenade you.", "This Friday's happy hour, your favorite beer/wine/champagne will be on tap!", "If WDI was a tv show, you'd be the star, not the dorky best friend. No way.", "Being in the tech world is improving your level of cool."]
      @compliment = compliments.sample
       render(:erb, :index)
    end



  end

end







    # get('/') do
    #   "hey babe"
    # end

     # excitement_level = params[:level].to_i
     #  bangs = "!" * excitement_level
     #  "Happy Holidays#{bangs}"
