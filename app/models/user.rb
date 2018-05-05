class User < ApplicationRecord
  has_secure_password

  has_many :directors
  has_many :movies
  has_many :comments
  has_many :commented_movies, through: :comments, source: :movie
  has_one :directory
end
