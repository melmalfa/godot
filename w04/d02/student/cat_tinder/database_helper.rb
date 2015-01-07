module CatTinder
  class DatabaseHelper < Sinatra::Base

require 'redis'
require 'seed.rb'

$redis = Redis.new

  def ids

  end




  end
end


#I am so frustrated. The very first thing asked of us, "Run the seed file" makes no sense to me. Run it in what? Terminal makes the most sense- to run the file with ruby, but nothing happens. So I tried pry and redis. I have no clue why you want us to run this, but How can I move on if I can't get the first line?!?!?
# I move on and I still can't figure out what the hw is looking for- how to write these methods. I am completely confused by using redis commands alongside ruby and how to know what is used for what. I read over my notes from today, looked at all the other files we wrote as examples and te files in the instructor folder from today, but the info in seed.rb is foreign to me.
