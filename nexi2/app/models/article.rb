class Article < ActiveRecord::Base
  attr_accessible :title, :author, :category, :geo_region, :content, :page_id ,:image, :permalink, :is_featured, :is_headline
  
  belongs_to :page
  has_many :comments
  
  has_attached_file :image
  
  def to_param
     "#{id}-#{title}"
  end
  
  
end
