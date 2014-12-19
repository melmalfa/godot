module Parlour
  class Server < Sinatra::Base
    enable :logging
    # # enables using the logging which takes out need for puts


    get('/coin_toss') do
      @guess = params[:guess]
      @result =Parlour::Coin.flip
      if @guess == @result
        @message = "Now we're playin' baby!"
      else
        @message = "Wrong! Better luck next time, Kid!"
      logger.info(@result)
      render(:erb, :index)
    end

    get('/dice_roll') do
       @guess = params[:guess]
      @result =Parlour::Coin.flip
      if @guess == @result
        @message = "Now we're playin' baby!"
      else

      logger.info(@result)
      render(:erb, :dice_roll)
    end

  end
end
