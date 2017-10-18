class Comment < ApplicationRecord
  belongs_to :image
  # This is saying each comment is associated with one image and will have an image_id column on this table
  # You've gained some new methods with this association (see more on the docs!):
  # some_comment.image
  # some_comment.create_image
end
