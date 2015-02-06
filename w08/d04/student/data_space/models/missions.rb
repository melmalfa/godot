class Mission < ActiveRecord::Base
  has_one :space_craft,
  has_and_belongs_to_many :space_travelers,
  has_one :space_program,
  belongs_to_many :space_programs,
  # is it related to 'nation'? through? if so, through which connection?
end
