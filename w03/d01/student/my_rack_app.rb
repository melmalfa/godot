require 'rack'

app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['<h1>these are the best years of our lives</h1>']]
end

Rack::Handler::WEBrick.run app
