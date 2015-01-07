module App
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new({
      :host => "127.0.0.1",
      :port => 6379
      })
      # TODO instantiate a new Redis connection
      # set the host to 127.0.0.1 and the port to 6379
      # and assign it to $redis
    end

    configure :production do
      $redis = Redis.new({
      :host => "127.0.0.1",
      :port => 6379
      })
      # Settings for the production environment..
    end

    get('/') do
      @visitor_count = $redis.incr("visitor_count")
      render(:erb, :index, :layout => :default)
    end

    get('/shop/:more') do
      department = params[:more]
      @visitor_count = $redis.hincrby("counter", department, 1)
      $redis.lpush("pages_viewed", department)
      @pages_viewed = $redis.lrange("pages_viewed", 0, -1)
      render(:erb, :index, :layout => :default)
    end


  end # Server
end # App
