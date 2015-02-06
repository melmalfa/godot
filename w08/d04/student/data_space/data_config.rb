require 'active_record'
require_relative 'models/missions'
require_relative 'models/nations'
require_relative 'models/space_crafts'
require_relative 'models/space_programs'
require_relative 'models/space_travelers'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'melodiemalfa',
  database: 'data_space_db'
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)


# i'm sorry but i had so much trouble with this- not for knowing how to put it together, but the logic behind has and belongs to. I tried to research this, but probably should have just moved on with the answers I had.
