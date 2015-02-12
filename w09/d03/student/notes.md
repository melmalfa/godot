rails new band_io_app --database=postgresql --skip-turbolinks --skip-test-unit

bundle install
rake db:create


rails generate migration CreateVenues
rake db:migrate


create_table :venues do |t|
      t.string :name,                 null: false
      t.string :city,                 null: false
      t.string :state,                null: false
      t.boolean :is_family_friendly,  default: false
