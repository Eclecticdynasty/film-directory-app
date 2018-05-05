class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :director
  has_many :comments
end
