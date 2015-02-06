class Nation < ActiveRecord::Base
  has_many :space_programs, :space_travelers
end
