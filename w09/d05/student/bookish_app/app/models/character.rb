class Character < ActiveRecord::Base
  belongs_to :book
  has_one :author, through: :book
end
