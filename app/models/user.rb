class User < ApplicationRecord
  has_many :cards
  has_many :topics
  has_many :checks
  has_many :attempts
end
