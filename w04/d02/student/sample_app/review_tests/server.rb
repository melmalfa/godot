module Holidays
  class Server < Sinatra::Base

    get('/') do
      excitement_level = params[:level].to_i
      bangs = "!" * excitement_level
      "Happy Holidays#{bangs}"
    end


  end
end
