module Portfolio

  class Server < Sinatra::Base

    # get('/') do
    #   status(200)
    #   headers({"X-Powered-By" => "Sinatra"})
    #   $stdout.puts("Hello")
    #   body("<h1>Good Morning</h1>")
    # end

    get('/') do
      status(301)
      headers({"Location" => "./index.html"}
      redirect to('./index.html')
    end

  end
end
