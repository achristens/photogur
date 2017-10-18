class Tag < ApplicationRecord
  has_and_belongs_to_many :images
  # This is a pictures_tags join table
end
