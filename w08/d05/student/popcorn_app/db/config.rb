require 'active_record'

require_relative '../models/genre'
require_relative '../models/movie'
require_relative '../models/purchase'
require_relative '../models/user'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'melodiemalfa',
  database: 'popcorn_db'
)

# Logging
ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
