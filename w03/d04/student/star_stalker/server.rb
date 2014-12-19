module StarPower

 class Server < Sinatra::Base

    get('/') do
    Welcome to StarStalker.com! Home of the best celebrity stalking ever.
    <a href=./about>About StarStalker.com</a>
    <a href=./stars>Star Page</a>
    render (:erb, :index)
    end

    get('/about') do
    <h1> About Star Stalker</h1>
    In 2005, StarStalker.com was established by its owner, Mr. P. Ping Tom. After several lawsuits, Mr. Tom turned his obsessive behaviors to the beauty of the internet.
    render (:erb, :about)
    end

    get('/stars') do

    render (:erb, :stars)
    end





  end
end






