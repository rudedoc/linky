class Image < ApplicationRecord
  belongs_to :user
  belongs_to :imageable, polymorphic: true
end
