class Post < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :trails
  has_many :post_likes
  has_many :images, as: :imageable

  def as_json(opts = {})
    super.merge(likes: post_likes.as_json)
  end
end
