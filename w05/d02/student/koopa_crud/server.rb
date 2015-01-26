module Koopa
  class Server < Sinatra::Base

    enable :logging

    configure :development do
      register Sinatra::Reloader

      $redis = Redis.new
    end

    configure :production do
       $redis = Redis.new
     end

    get('/') do
      render(:erb, :index)
    end

    get('/koopas/new') do
# display a form for creating a new koopa
      render(:erb, :new)
    end

    get('/koopas')  do
#       ould display all the koopas
# each list entry at '/koopas' should dynamically link to the appropriate koopa profile page.

    end

    get('/hoopas/:id') do
      # should display the profile page for the koopa with id of 4
    end



  end
end
