class Image < ApplicationRecord


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
