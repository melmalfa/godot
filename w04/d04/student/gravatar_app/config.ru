require 'json'
require 'sinatra/base'
require 'sinatra/reloader'
require 'redis'

require_relative 'server'

run GravatarApp::Server
