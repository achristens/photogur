class Image < ApplicationRecord
  has_many :comments
  belongs_to :user
  # This is saying there is an image_id column in the comment table. You've gained some new methods with this association (see more on the docs!):
  # images.comments
  # images.comments.count
  has_and_belongs_to_many :tags
    # This is a pictures_tags join table
    # some_image.tags
    # some_image.tags.count
    # etc

  validates :dog_name, :url, presence: true
  validates :title, length: { in: 3..50, :message => "Avast! Have ya too much grog? This must be 3-50 characters to be Doubloons!" }
  validates :url, uniqueness: true
  validates :url, format: { :with => URI::regexp(%w(http https)), :message => "Must begin with http" }

  def self.newest_first
    Image.order("created_at DESC")
  end

  def self.most_recent_five
    Image.newest_first.limit(5)
  end

  def self.created_before(time)
    Image.where("created_at < ?", time)
  end

  def self.pictures_created_in_year(select_year)
    Image.where("cast(strftime('%Y', created_at) as int) = ?", select_year)
  end
end
