class House < ActiveRecord::Base
  # this tells the db about the foreign key
  has_many :students
  #this represents the join table

  validates :name, uniqueness: true
end
