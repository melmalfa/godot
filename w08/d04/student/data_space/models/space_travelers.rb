class SpaceTraveler < ActiveRecord::Base
  has_one :nation
  has_and_belongs_to_many :missions
end
