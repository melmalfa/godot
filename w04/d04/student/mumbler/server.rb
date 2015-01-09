module Mumbler
  class Server < Sinatra::Base

    configure :development do
      $redis = Redis.new
      register Sinatra::Reloader
    end

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/mumbles')  do
      @allmumbles = $redis.lrange("wdi:students", 0, -1)
      render(:erb, :index, {:layout => :default})
    end
    # `GET /mumbles`,     **INDEX**:  list all mumbles

      get('/mumbles/new') do
      render(:erb, :new, {:layout => :default})
    end
# `GET /mumbles/new`, **NEW**:    display a new mumble form

    get('/mumbles/:id') do
      render(:erb, :show, {:layout => :default})
    end
# - `GET /mumbles/:id`, **SHOW**:   display a single mumble

    post('/mumbles') do
    end
# - `POST /mumbles`,    **CREATE**: persist a new mumble to our

  end
end
