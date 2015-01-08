require 'pry'

module TheDMV
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader

      # sets up redis instance
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end

    get('/') do
      render(:erb, :index)
    end

    get('/first_form')  do
      render(:erb, :first_form)
    end

    post('/first_form') do
    $redis.hmset("user", "driver_name", params["driver_name"], "driver_license", params["driver_license"])
    redirect to "/second_form"
    end

    get("/second_form") do
      render(:erb, :second_form)
    end

    post("/second_form") do
      $redis.hmset("user", "dob", params["dob"], "sex", params["sex"])
    redirect to ("/third_form")
    end

    get("/third_form")  do
      render(:erb, :third_form)
    end

  end
end

# $redis.hmset("driver:1", "driver_name", params["driver_name"], "driver_license", params["driver_license"])
