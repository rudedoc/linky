class User < ApplicationRecord
  has_many :posts
  has_many :post_likes
  has_many :images
end
