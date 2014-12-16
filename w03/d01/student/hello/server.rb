module Hello
  class Server < Sinatra::Base

# invoking a method from sinatra base
# '/' is the path
# get is also the http method
# the block is the response
  get ('/') do
    # this constructs the response
    status(200)
    headers({"x-hacker" => "hey hacker ;)"})
    body("<h1>Everything is ok!</h1>")
  end

  get('/kittens') do
    status(200)
    headers({})
    body('<p>meow</p><img src="http://cdn.desktopwallpapers4.me/wallpapers/artistic/1280x800/2/12118-sleepy-kitten-1280x800-artistic-wallpaper.jpg"'>

  end

  end
end
