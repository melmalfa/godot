require 'active_record'
require 'pry'

# does order matter?
require_relative = 'student'
require_relative = 'spell'
require_relative = 'house'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'melodiemalfa',  # your username
  database: 'hogwarts_app' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

