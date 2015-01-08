module Diary
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader

      # sets up redis instance
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end

    get("/") do
      render(:erb, :index)
    end

    get('/entries') do
      @entries = $redis.lrange("entries", 0, -1)
      render(:erb, :entries)
    end

    get('/entries/new') do
      render(:erb, :new_entry)
    end

    get('/sketches')  do
      sketch_ids = $redis.lrange("sketches", 0, -1)
      @sketches = sketch_ids.map { |id| $redis.hgetall("sketch:#{id}") }
      render(:erb, :sketches)
    end

    get('/sketches/new')  do
      render(:erb, :new_sketch)
    end

    post('/sketches') do
      id = $redis.incr("sketch_id")
      url = params("sketch_url")
      date = params("sketch_date")
      $redis.hmset("sketch:#{id}", "sketch_url", url, "sketch_date", date)
      $redis.lpush("sketches", id)
      # $redis.hmset(“sketch:1”, “sketch_url”, params[“sketch_url”], “sketch_date”, params[“sketch_date”])
#the above is what is the long way tested in pry first, then variablew were added at top then the shortened code directly bove this line that is outed
      # sketch = params["sketch_text"] + " " + params["sketch_date"]
      #the above is what i did but not right
      # $redis.rpush("sketches", sketch)
      redirect to("/sketches")
    end

    post('/entries') do
      entry = params["entry_date"] + " " + params["entry_text"]
      $redis.rpush("entries", entry)
# want to redirect to get request above for entries
      # binding.pry
      redirect to("/entries")

    end

  end
end
