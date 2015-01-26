require 'redis'
require 'httparty'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'

run Koopa::Server
