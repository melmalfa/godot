class SpaceProgram < ActiveRecord::Base
  has_many :missons, :space_travelers
  has_one :nation
end
