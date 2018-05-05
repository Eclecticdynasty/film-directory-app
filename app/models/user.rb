class User < ApplicationRecord
  has_secure_password

  has_many :directors
  has_many :movies
end
