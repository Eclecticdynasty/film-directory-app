class User < ApplicationRecord
  has_secure_password

  has_many :directors
  has_many :movies
  has_many :comments
  has_many :commented_movies, through: :comments, source: :movie
  has_one :directory


  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, :password, :username, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 8 }


def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
    u.password ||= SecureRandom.base58
  end
end






end
