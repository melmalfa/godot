module Wdinstagram
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    ########################
    # Routes
    ########################

    get('/') do
      render(:erb, :index, :layout => :default)
    end

    get('/entries') do
      entry_ids = $redis.lrange("entries", 0, -1)
      @entries = entry_ids.map { |id| $redis.hgetall(":#{id}")}
      render(:erb, :entries, :layout => :default)
    end

    post('/entries')  do
      id = $redis.incr("entry_id")
      author = params["author"]
      url = params["photo_url"]
      date = params["date_taken"]
      $redis.hmset("entry:#{id}", "author", author, "photo_url", url, "date_taken", date)
      $redis.lpush("entries", id)
      redirect to("/entries")
    end

    get('/entries/new') do
      render(:erb, :new, :layout => :default)
    end

  end
end
