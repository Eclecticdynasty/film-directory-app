class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :director
  belongs_to :genre
  has_many :comments
end
