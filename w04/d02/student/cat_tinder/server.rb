require_relative 'database_helper'

module CatTinder
  class Server < Sinatra::Base
    helper CatTinder::Databasehelper

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


  end
end


