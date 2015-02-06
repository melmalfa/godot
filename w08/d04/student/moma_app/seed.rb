require 'active_record'
require 'pry'

require_relative = 'artist'
require_relative = 'painting'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'melodiemalfa',
  database: 'moma_db'
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

Painting.create([
  {title: 'Starry Night', artist_id: 1}
  {title: 'Cafe Terrace', artist_id: 1}
  {title: 'Guernica', artist_id: 2}
  {title: 'The Old Guitarist', artist_id:  2}
  {title: 'The Great Wave off Kanagawa', artist_id: 3}
  {title: 'Red Fuji', artist_id: 3}
  ])

Artist.create([
  {name: 'Vincent Van Gogh', nationality: 'Dutch'}
  {name: 'Pablo Picasso', nationality: 'Spanish'}
  {name: 'Katsushika Hokusai', nationality: 'Japanese'}
])




# db_conn.close
