class Student < ActiveRecord::Base

# this is the Students table and each method is a column???
# we call this file the active record model

  belongs_to :house
  has_and_belongs_to_many :spells
  validates :fname, presence: true
  validates :lname, presence: true
  #  same as validates (:fname, {presence: true})
  # validates :name, uniqueness: true


  def read_directions
    "never!"
  end

  def full_name
    fname + " " + lname
  end

end



